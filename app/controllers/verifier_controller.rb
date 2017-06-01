class VerifierController < ApplicationController

  # Verifies whether the given token is valid and performs the proper
  # validations.
  #
  # This method validates:
  #
  # - Speaker attendance
  # - Certificate confirmation
  # - Vote confirmation
  def verify
    verifier = Verifier.find_by(token: params[:token])

    if verifier.nil? || verifier.verified
      render "error" and return
    end

    case verifier.verify_type
      when "speaker"
        speaker = Speaker.find_by(
          email: verifier.email,
          event_id: verifier.event_id
        )

        speaker.update_attribute(:confirmed, true)
        verifier.update_attribute(:verified, true)

        # Send certificate validation if required
        if speaker.certificate == true
          Verifier.create(
            email: speaker.email,
            event_id: speaker.event_id,
            verified: false,
            verify_type: "certificate"
          )
        end

        # Send edition token if it has to be generated
        event = Event.find(speaker.event_id)
        if event.token.nil?
          event.send_edition_token
        end

        render "speaker_verified"

      when "certificate"
        speaker = Speaker.find_by(
          email: verifier.email,
          event_id: verifier.event_id
        )

        verifier.update_attribute(:verified, true)
        # Verifiery may have been created from admin panel, update speaker
        speaker.update_attribute(:certificate, true)
        Notifier.send_certificate(speaker).deliver

        render "certificate_sent"

      when "vote"
        event = Event.find(verifier.event_id)
        conference = Conference.find(event.conference_id)

        if conference.voting_enabled
          event.update_attribute(:votes, event.votes + 1)
          verifier.update_attribute(:verified, true)

          render "vote_verified" and return
        end
    end

    render "error"
  end
end
