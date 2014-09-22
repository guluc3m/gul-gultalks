class SpeakerCert < Prawn::Document
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

  def header
    text "#{Rails.application.secrets.org_president}, en calidad de presidente del", align: :center
    text "Grupo de Usuarios de Linux", style: :bold, align: :center
    text "de la Universidad Carlos III de Madrid", style: :bold, align: :center
  end

  def certificate
    move_down 50
    text "CERTIFICO", size: 18, style: :bold, align: :center

    move_down 30
    text "Que  #{@speaker.name}  ha asistido a las '#{RomanNumerals.to_roman(@conference.start_date.year - 2002)} Jornadas Técnicas del GUL', que tuvieron lugar durante el mes #{@conference.start_date.month} de #{@conference.start_date.year}, presentando la ponencia:", align: :center

    move_down 40
    text "#{@event.title}", size: 16, style: :italic, align: :center

    move_down 40
    text "Y para que conste a los efectos oportunos, sello y firmo el presente.", align: :center
  end

  def footer
    move_down 70
    text "En #{@event.location} a ___ de _________ de 2014.", align: :center
    text "Fdo: #{Rails.application.secrets.org_president}", align: :center
    text "(presidente)", align: :center
  end
end
