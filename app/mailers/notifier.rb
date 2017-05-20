class Notifier < ActionMailer::Base

  # Sends a certificate confirmation email with a link the speaker must access
  # in order to get sent their activity certificate.
  def confirmation_certificate(verifier)
    @event = Event.find(verifier.event_id)
    @url = verify_url(token: verifier.token)
    @speaker = Speaker.find_by(event_id: verifier.event_id, email: verifier.email)

    email_with_name = "#{@speaker.name} <#{@speaker.email}>"
    mail(to: email_with_name, subject: t("mails.notifier.tag") + " " + t("mails.notifier.confirmation_certificate.subject"))
  end

  # def confirmation_event(verifier)
  #   @event = Event.find(verifier.event_id)
  #   @url = verify_url(token: verifier.token)

  #   mail(to: verifier.email, subject: t("notifier.tag") + " " + t("notifier.confirmation_event.subject"))
  # end

  # Sends a speaker attendance confirmation email with a link the speaker must
  # access in order to confirm that they want to impart a given activity.
  def confirmation_speaker(verifier)
    @event = Event.find(verifier.event_id)
    @speaker = Speaker.find_by(event_id: verifier.event_id, email: verifier.email)
    @url = verify_url(token: verifier.token)

    email_with_name = "#{@speaker.name} <#{@speaker.email}>"
    mail(to: email_with_name, subject: t("mails.notifier.tag") + " " + t("mails.notifier.confirmation_speaker.subject"))
  end

  # Sends a vote confirmation email with a link the user must access in order
  # to confirm their vote for a given activity.
  def confirmation_vote(verifier)
    @event = Event.find(verifier.event_id)
    @url = verify_url(token: verifier.token)
    mail(to: verifier.email, subject: t("mails.notifier.tag") + " " + t("mails.notifier.confirmation_vote.subject"))
  end

  # Generates a speaker certificate, attaches the resulting PDF file to the
  # email and sends it to the speaker.
  def send_certificate(speaker)
    @event = Event.find(speaker.event_id)
    @speaker = speaker

    cert_name = "#{@event.title.parameterize.underscore}-gul-cert.pdf"
    attachments[cert_name] = SpeakerCert.new(@event, @speaker).render

    email_with_name = "#{@speaker.name} <#{@speaker.email}>"
    mail(to: email_with_name, subject: t("mails.notifier.tag") + " " + t("mails.notifier.send_certificate.subject"))
  end

  # Sends a unique edition token to the first speaker for the given activity
  def send_edition_token(event, speaker)
    @url = edit_event_url(token:event.token)
    @event = event
    @speaker = speaker

    email_with_name = "#{@speaker.name} <#{@speaker.email}>"
    mail(to: email_with_name, subject: t("mails.notifier.tag") + " " + t("mails.notifier.send_edition_token.subject"))
  end
end
