ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do

    columns do
      column do
        panel t("event.recent") do
          table_for Event.where(verified: true).order('created_at DESC').limit(8) do
             # column("State") {|event| event.status}
                # = link_to event.title, conference_event_path(@conference, event)
             # column("Title") {|event| link_to(event.title, conference_event_path(@conference, event))}
            column(t "event.Event" ) {|event| status_tag('active', :published, :class => 'important', :label => t("event.subclasses.#{event.subclass}.default"))}
            # column(t "event.title" ) {|event| link_to event.title, admin_event_path(event)}
            column(t "event.title" ) {|event| link_to event.title, admin_conference_event_path(event.conference, event)}
            column(t "event.date") {|event| event.created_at.to_s(:short)}
          end

        end
      end

      column do
          panel t("event.missing_speaker") do
            table_for Event.select{ |event| event.verified && !event.cancelled && !event.speaker? } do
              column(t "event.Event" ) {|event| status_tag('active', :published, :class => 'important', :label => t("event.subclasses.#{event.subclass}.default"))}
              # column(t "event.title" ) {|event| link_to event.title, admin_event_path(event)}
              column(t "event.title" ) {|event| link_to event.title, admin_conference_event_path(event.conference, event)}
              column(t "event.date") {|event| event.created_at.to_s(:short)}
            end
          end
      end


    end
    end
end
