class VerifierController < ApplicationController

  def verify
    verifier = Verifier.find_by(token: params[:token])

    if verifier.nil? || verifier.verified
      render "error"
    else
      if verifier.verify_type.eql? "speaker"
        speaker = Speaker.find_by(email: verifier.email, event_id: verifier.event_id)

        speaker.update_attribute(:confirmed, true)
        verifier.update_attribute(:verified, true)

        # Send certificate validation if required
        if speaker.certificate == true
          Verifier.create(email: speaker.email, event_id: speaker.event_id, verified: false, verify_type: "certificate")
        end

        render "speaker_verified"
      elsif verifier.verify_type.eql? "certificate"
        speaker = Speaker.find_by(email: verifier.email, event_id: verifier.event_id)

        verifier.update_attribute(:verified, true)
        Notifier.send_certificate(speaker).deliver
        render "certificate_sent"
      else
        event = Event.find(verifier.event_id)

        if verifier.verify_type.eql? "event"
          # Validate the event
          event.update_attribute(:verified, true)
          event.update_attribute(:shown, true)
          verifier.update_attribute(:verified, true)
          render "event_verified"

        elsif verifier.verify_type.eql? "vote"
          # Validate the vote
          event.update_attribute(:votes, event.votes + 1)
          verifier.update_attribute(:verified, true)
          render "vote_verified"        
        end
      end
    end
  end
end
