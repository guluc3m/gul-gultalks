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

      # Set active if depending on email present or not
      if obj.speaker.blank?
        # No speaker, active
        obj.active = true
      else
        # Require verification from the speaker
        obj.active = false
      end

      session.delete("event_wizard") if obj.save
    else
      #session["#{underscored_name}_wizard".to_sym][underscored_name.to_sym] = accessible_attributes
      session["event_wizard"]["event"] = accessible_attributes 
    end
  end

  def accessible_attributes
    acc_attr  = @@parent.accessible_attributes
    attributes.reject! { |key| !acc_attr.member?(key) }
  end
end
