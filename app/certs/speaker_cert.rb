class SpeakerCert < Prawn::Document

  # Creates the certificate PDF file that will be sent to the speaker.
  def initialize(event, speaker)
    super(page_size: "A4", margin: 100, font_size: 12)
    font "Courier"
    @event = event
    @speaker = speaker
    @conference = Conference.find(@event.conference_id)
    header
    certificate
    footer
  end

  # Generates the header of the certificate.
  #
  # This section contains information on the organization and the member in
  # charge of signing the document.
  def header
    text I18n.t("certificates.speaker.header"), align: :center
    text I18n.t("certificates.speaker.organization"), style: :bold, align: :center
  end

  # Generates the body of the certificate.
  #
  # This section contains information on the speaker (name) and the activity.
  def certificate
    move_down 50
    text I18n.t("certificates.speaker.certifies"), size: 18, style: :bold, align: :center

    move_down 30
    text I18n.t("certificates.speaker.speaker_info", name: @speaker.name, conference_title: @conference.title, month: I18n.l(@conference.start_date, format: :month_only), year: @conference.start_date.year), align: :center

    move_down 40
    text "#{@event.title}", size: 16, style: :italic, align: :center

    move_down 40
    text I18n.t("certificates.speaker.i_sign"), align: :center
  end

  # Generates the footer of the certificate.
  #
  # This section contains the signature of the organization member in charge.
  def footer
    move_down 70
    text I18n.t("certificates.speaker.signature_details", location: @event.location, year: @conference.start_date.year), align: :center

    move_down 20
    text I18n.t("certificates.speaker.signature"), align: :center
  end
end
