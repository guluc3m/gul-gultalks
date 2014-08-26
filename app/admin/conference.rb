ActiveAdmin.register Conference do

  menu :label => proc{ t("Conferences") }

  controller do
    def find_resource
      scoped_collection.friendly.find(params[:id])
    end
  end

  index do
    selectable_column
    column :title
    column :start_date
    column :end_date
    column :active
    column :call_for_papers_enabled
    column :voting_enabled
    actions
  end

  filter :title
  filter :start_date

  form do |f|
    f.inputs do
      f.input :title, label: t("conference.title")
      f.input :description, label: t("conference.description")
      f.input :location, label: t("location")
      f.input :start_date, label: t("conference.start_date")
      f.input :end_date, label: t("conference.end_date")
      f.input :coordinator, label: t("conference.coordinator")
      f.input :call_for_papers_start_date, label: t("conference.call_for_events_start_date")
      f.input :call_for_papers_end_date, label: t("conference.call_for_events_end_date")
      f.input :voting_start_date, label: t("conference.voting_start_date")
      f.input :voting_end_date, label: t("conference.voting_end_date")
      f.input :active, label: t("conference.status.active"), as: :radio
      f.input :call_for_papers_enabled, label: t("conference.status.call_for_events_enabled"), as: :radio
      f.input :voting_enabled, label: t("conference.status.voting_enabled"), as: :radio
      f.input :slug, label: "Slug"
    end
    f.actions
  end
end
