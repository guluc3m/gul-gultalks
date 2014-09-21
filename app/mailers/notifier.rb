class Notifier < ActionMailer::Base
  # default from: 'no-reply@example.com' #TOFIX: {DOMAIN_ENV}

  def confirmation_certificate(verifier)
    @event = Event.find(verifier.event_id)
    @url = verify_url(token: verifier.token)
    @speaker = Speaker.find_by(event_id: verifier.event_id, email: verifier.email)

    email_with_name = "#{@speaker.name} <#{@speaker.email}>"
    mail(to: email_with_name, subject: t("notifier.tag") + " " + t("notifier.confirmation_certificate.subject"))
  end

  def confirmation_event(verifier)
    @event = Event.find(verifier.event_id)
    @url = verify_url(token: verifier.token)

    cert_name = "#{@event.title.parameterize.underscore}-gul-cert.pdf"
    pdf_attachment = lesc(File.read('app/views/layouts/certs/cert_template.erbtex'))

    attachments[cert_name] = {
        :mime_type => 'application/pdf', 
        :content => pdf_attachment
    }
  
    mail(to: verifier.email, subject: t("notifier.tag") + " " + t("notifier.confirmation_event.subject"))
  end

  def confirmation_speaker(verifier)
    @event = Event.find(verifier.event_id)
    @speaker = Speaker.find_by(event_id: verifier.event_id, email: verifier.email)
    @url = verify_url(token: verifier.token)

    email_with_name = "#{@speaker.name} <#{@speaker.email}>"
    mail(to: email_with_name, subject: t("notifier.tag") + " " + t("notifier.confirmation_speaker.subject"))
  end

  def confirmation_vote(verifier)
    @event = Event.find(verifier.event_id)
    @url = verify_url(token: verifier.token)
    mail(to: verifier.email, subject: t("notifier.tag") + " " + t("notifier.confirmation_vote.subject"))
  end

  def send_certificate(speaker)
    @event = Event.find(speaker.event_id)
    @speaker = speaker

    cert_name = "#{@event.title.parameterize.underscore}-gul-cert.pdf"
    attachments[cert_name] = SpeakerCert.new(@event).render

    email_with_name = "#{@speaker.name} <#{@speaker.email}>"
    mail(to: email_with_name, subject: t("notifier.tag") + " " + t("notifier.send_certificate.subject"))
  end
end
