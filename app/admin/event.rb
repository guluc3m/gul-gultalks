ActiveAdmin.register Event do
    
  menu :label => proc{ t("Events") }


  controller do
    def find_resource
      scoped_collection.friendly.find(params[:id])
    end
  end

  index do
    selectable_column
    column :title
    # column :subclass {|event| status_tag('active', :ok, label: event.subclass) }
    column (t "event.subclass") {|event| status_tag('active', :yes, :label => t("event.subclasses.#{event.subclass}")) }
    column (t "event.level") {|event| t("event.levels.#{event.level}").humanize }
    column :room
    column :shown
    column :verified
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
      f.input :summary, label: t("event.summary")
      f.input :description, label: t("event.description") 
      f.input :subclass, label: t("event.subclass"), as: :select, collection: Event.subclasses.keys.collect {|s| [t("event.subclasses.#{s}").humanize, s]}
      f.input :level, label: t("event.subclass"), as: :select, collection: Event.levels.keys.collect {|l| [t("event.levels.#{l}").humanize, l]}
      f.input :duration, label: t("event.duration"), as: :select, collection: Event.durations.keys.collect {|d| [t("event.durations.#{d}").humanize, d]}
      f.input :content_url, label: t("event.url")
      f.input :code, label: t("event.code").humanize
      f.input :video, label: t("event.video")
      f.input :live_video, label: t("event.live_video")
      f.input :notes, label: t("event.comments")
      f.input :votes, label: t("event.votes")
      f.input :slug, label: "Slug"
    end
    f.inputs "Organization" do
      f.input :shown, label: t("event.status.shown"), as: :select
      f.input :verified, label: t("event.status.verified"), as: :select
      f.input :cancelled, label: t("event.status.cancelled"), as: :select
      f.input :accepted, label: t("event.status.accepted"), as: :select
      f.input :location, label: t("location")
      f.input :room, label: t("event.room")
      f.input :start_dtime, label: t("event.start_datetime")
      f.input :end_dtime, label: t("event.end_datetime")
      f.input :assisted_by, label: t("event.assisted_by")
    end
    f.actions
  end
end
