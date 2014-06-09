class Notifier < ActionMailer::Base
  default from: "no-reply@example.com" #TOFIX: {DOMAIN ENV}

  def confirmation_vote(recipient)

      mail(to: recipient.speaker_contact_info, subject: '[GUL] Valida tu voto')           

  end

  def confirmation_talk(recipient)
      mail(to: recipient.speaker_contact_info, subject: '[GUL] Gracias por proponer tu charla -')           
  end


end
