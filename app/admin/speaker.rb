ActiveAdmin.register Speaker do
  permit_params :confirmed, :email, :event_id, :name, :twitter

  menu :label => proc{ t("Speakers") }

  index do
    selectable_column
    column :name
    column :email
    column :twitter
    column :event_id
    column :confirmed
    actions
  end

  filter :title
  filter :date

  form do |f|
    f.inputs "Info" do
      f.input :name, label: t("speaker.name")
      f.input :email, label: t("speaker.email")
      f.input :twitter, label: t("speaker.twitter")
      f.input :event_id, label: t("Event"), as: :select, collection: Event.all
      f.input :confirmed, label: t("speaker.confirmed"), as: :radio
    end
    f.actions
  end
end
