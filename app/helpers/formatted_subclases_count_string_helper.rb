module FormattedSubclasesCountStringHelper

    def format_subclasses_string(conference)

        subs_strings = Array.new

        # Retrieve all available subclasses
        Event.subclasses.keys.each do |subclass|
            num = conference.events.where(accepted: true, subclass: subclass).count
            unless num.zero?
                subs_strings.push(t("event.subclasses." + subclass, count: num))
            end
        end

        unless subs_strings.empty?
            "Hubo " << subs_strings.to_sentence
        else
            nil
        end
    end

end
