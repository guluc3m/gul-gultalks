class WizardEvent < Event
  attr_accessor :step, :steps, :session, :validations

  @@parent = superclass

  def underscored_name
    @@parent.name.underscore
  end

  def self.model_name
    @@parent.model_name
  end

  def save
    valid?

    remove_errors_from_other_steps

    if errors.empty?
      if step == steps.last
        obj = @@parent.new(accessible_attributes)

        # Add tags
        obj.tag_list.add(session["event_wizard"]["tags"], parse: true)

        # Validation email
        validation_email = session["event_wizard"]["validation_email"]

        # Speakers
        unless session["event_wizard"]["speakers_attributes"].nil?
          obj.speakers_attributes = session["event_wizard"]["speakers_attributes"]
        end

        session.delete("event_wizard") if obj.save_and_verify(validation_email)
      else
        session["event_wizard"]["event"] = accessible_attributes 
      end
    end
  end

  def accessible_attributes
    acc_attr  = @@parent.accessible_attributes
    attributes.reject! { |key| !acc_attr.member?(key) }
  end

  def remove_errors_from_other_steps
    other_step_validation_keys = (errors.messages.keys - validations[step])
    errors.messages.reject! { |key| other_step_validation_keys.include?(key) }
  end
end
