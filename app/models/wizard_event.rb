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

      session.delete("#{underscored_name}_wizard".to_sym) if obj.save
    else
      session["#{underscored_name}_wizard".to_sym][underscored_name.to_sym] = accessible_attributes
    end
  end

  def accessible_attributes
    acc_attr  = @@parent.accessible_attributes
    attributes.reject! { |key| !acc_attr.member?(key) }
  end
end
