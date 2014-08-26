class VerifierController < ApplicationController

  def verify
    verifier = Verifier.where(email: params[:email], token: params[:token], event_id: params[:event_id].to_i, verify_type: params[:verify_type]).first

    if verifier.nil? || verifier.verified
      render "error"
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
