ActiveAdmin.register Verifier do

  menu :label => proc{ t("Verifiers") }

  index do
    selectable_column
    column :email
    column :event_id
    column :verify_type
    column :verified
    actions
  end

  filter :event_id
  filter :verify_type

  form do |f|
    f.inputs "Info" do
      f.input :email, label: t("verifier.email")
      f.input :event_id, label: t("Event"), as: :select, collection: Event.all
      f.input :verify_type, label: t("verifier.type"), as: :select, collection: Verifier.types.keys.collect {|t| [t("verifier.types.#{t}").humanize, t]}
      f.input :verified, label: t("verifier.verified"), as: :radio
      f.input :token, label: t("verifier.token")
    end
    f.actions
  end
end
