class Notifier < ActionMailer::Base
  default from: 'no-reply@example.com' #TOFIX: {DOMAIN_ENV}

  def confirmation_vote(event, key)
      @event = event
      @key  = key
      mail(to: @talk.email, subject: '[GUL-TALKS] Valida tu voto')

  end

  def confirmation_event(event, key)
      @event = talk
      @key  = key
      mail(to: @talk.speaker_contact_info, subject: '[GUL-TALKS] Gracias por proponer tu charla')
  end

end
