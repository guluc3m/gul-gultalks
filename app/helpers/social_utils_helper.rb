module SocialUtilsHelper

    require 'uri'

    PROVIDER_URL = {
         'twitter' => 'https://twitter.com/home?status=',
        'facebook' => 'https://www.facebook.com/sharer/sharer.php?u=',
          'google' => 'https://plus.google.com/share?url='
    }

    def share_event_link (params)
        provider = params[:provider]
        url = params[:url]
        event = params[:event]

        # TODO: make this check better!
        unless PROVIDER_URL.include? provider
            raise "Unknown provider '" << provider << "'\nPlease use " << PROVIDER_URL.keys.to_sentence(last_word_connector: ' or ') << " as social provider."
        end

        output = String.new
        icon_class = ["fa", "fa-fw", "fa-lg"]

        unless is_valid_url (url)
            output.concat(
                content_tag(:span, content_tag(:i, "", class: icon_class.insert(1, "fa-" << provider)))
            )
        else
            case provider
            when 'twitter'
                output.concat(
                    content_tag(:a,
                                content_tag(:i, "", class: icon_class.insert(1, "fa-twitter")),
                                target: "_blank",
                                href: PROVIDER_URL[provider] +
                                event.title.truncate(30, separator: " ") +
                                " " + url + " - via @guluc3m"
                               )
                )

            when 'facebook'
                output.concat(
                    content_tag(:a,
                                content_tag(:i, "", class: icon_class.insert(1, "fa-facebook")),
                                target: "_blank",
                                href: PROVIDER_URL[provider] +
                                event.title +
                                " " + url + " - via gul.es"
                               )
                )
            when 'google'
                output.concat(
                    content_tag(:a,
                                content_tag(:i, "", class: icon_class.insert(1, "fa-google")),
                                target: "_blank",
                                href: PROVIDER_URL[provider] + url
                               )
                )
            else
                raise 'A test exception.'
            end
        end
    end

    def twitter_speaker_list (event)

        output = String.new
        speakers_pack = Array.new

        event.speaker_list.each do |speaker|
            if speaker.twitter.present?
                output.concat(content_tag(:a, h(speaker.name), href: "https://twitter.com/" << speaker.twitter, target: "_blank"))
            else
                output.concat(speaker.name)
            end

            speakers_pack.push(output)
            output = ""
        end

        speakers_pack.to_sentence
    end


    private

    def is_valid_url (url)

        if blank?
            return false
        end

        uri = URI.parse(url.to_s)
        if not uri.kind_of? URI::HTTP and not uri.kind_of? URI::HTTPS
            return false
        end

        return true
    end
end
