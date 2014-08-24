class Notifier < ActionMailer::Base
  default from: 'no-reply@example.com' #TOFIX: {DOMAIN_ENV}

  def confirmation_vote(event, token)
      @event = event
      @token = token
      mail(to: @event.email, subject: '[GUL-TALKS] Valida tu voto')

  end

  def confirmation_event(event, token)
      @event = event
      @token = token
      cert_name = "#{@event.title.parameterize.underscore}-gul-cert.pdf"
      pdf_attachment = lesc(File.read('app/views/layouts/certs/cert_template.erbtex'))

      attachments[cert_name] = {
          :mime_type => 'application/pdf', 
          :content => pdf_attachment
      }

      # It fails!?!?!
      # email_with_name = "#{@event.speaker} <#{@event.email}>"

      # TODO: add email_with_name instead email
      mail(to: @event.email, subject: "Gracias por proponer tu charla")
  end

  private
  def lesc(text)
        LatexToPdf.escape_latex(text)
  end

end
