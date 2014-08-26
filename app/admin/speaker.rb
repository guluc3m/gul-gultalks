ActiveAdmin.register Speaker do

  menu :label => proc{ t("Speakers") }

  index do
    selectable_column
    column :name
    column :surname
    column :email
    column :event_id
    column :confirmed
    actions
  end

  filter :title
  filter :date

  form do |f|
    f.inputs "Info" do
      f.input :name, label: t("speaker.name")
      f.input :surname, label: t("speaker.surname")
      f.input :email, label: t("speaker.email")
      f.input :event_id, label: t("Event"), as: :select, collection: Event.all
      f.input :confirmed, label: t("speaker.confirmed"), as: :radio
    end
    f.actions
  end
end
