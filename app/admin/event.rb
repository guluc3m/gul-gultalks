ActiveAdmin.register Event do

  controller do
    def find_resource
      scoped_collection.friendly.find(params[:id])
    end
  end

  index do
    selectable_column
    column :title
    column :subclass
    column :level
    column :speaker
    column :email
    column :room
    column :active
    column :cancelled
    column :accepted
    actions
  end

  filter :title
  filter :date

  form do |f|
    f.inputs "Info" do
      f.input :conference_id, label: t("Conference"), as: :select, collection: Conference.all
      f.input :title, label: t("event.title")
      f.input :brief_description, label: t("event.brief_description")
      f.input :description, label: t("event.description") 
      f.input :subclass, label: t("event.subclass"), as: :radio, collection: Event.subclasses.keys.collect {|s| [t("event.subclasses.#{s}").humanize, s]}
      f.input :level, label: t("event.subclass"), as: :radio, collection: Event.levels.keys.collect {|l| [t("event.levels.#{l}").humanize, l]}
      f.input :speaker, label: t("event.speaker")
      f.input :email, label: t("event.contact")
      f.input :content_url, label: t("event.url")
      f.input :notes, label: t("event.comments")
      f.input :votes, label: t("votes")
      f.input :slug, label: "Slug"
    end
    f.inputs "Organization" do
      f.input :active, label: t("event.status.active"), as: :radio
      f.input :cancelled, label: t("event.status.cancelled"), as: :radio
      f.input :accepted, label: t("event.status.accepted"), as: :radio
      f.input :location, label: t("location")
      f.input :room, label: t("event.room")
      f.input :date, label: t("date")
      f.input :start_time, label: t("event.start_time")
      f.input :end_time, label: t("event.end_time")
      f.input :assisted_by, label: t("event.assistant")
    end
    f.actions
  end
end
