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
    if step == steps.last
      obj = @@parent.new(accessible_attributes)

      # Set errors if any
      session["event_wizard"]["errors"] = obj.errors

      # Add tags
      obj.tag_list.add(session["event_wizard"]["tags"], parse: true)

      # Validation email
      validation_email = session["event_wizard"]["validation_email"]

      # Speakers
      obj.speakers_attributes = session["event_wizard"]["speakers_attributes"]

      session.delete("event_wizard") if obj.save_and_verify(validation_email)
    else
      session["event_wizard"]["event"] = accessible_attributes 
    end
  end

  def accessible_attributes
    acc_attr  = @@parent.accessible_attributes
    attributes.reject! { |key| !acc_attr.member?(key) }
  end
end
