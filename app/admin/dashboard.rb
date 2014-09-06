ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      # span class: "blank_slate" do
      #   span I18n.t("active_admin.dashboard_welcome.welcome")
      #   small I18n.t("active_admin.dashboard_welcome.call_to_action")
      # end
    columns do
      column do
        panel "Recent events" do
          table_for Event.where(verified: true).order('created_at DESC').limit(8) do
             # column("State") {|event| event.status}
                # = link_to event.title, conference_event_path(@conference, event)
             # column("Title") {|event| link_to(event.title, conference_event_path(@conference, event))}
            column(t "event.Event" ) {|event| status_tag('active', :published, :class => 'important', :label => t("event.subclasses.#{event.subclass}"))}
            column(t "event.title" ) {|event| link_to event.title, admin_event_path(event)}
            column(t "event.date") {|event| event.created_at.to_s(:short)}
          end

          def subclass_count(subclass)
              Event.where(subclass: subclass, verified: true).order('created_at DESC').limit(8).count
          end
          para "Hay #{t("event.subclasses.talk")} #{subclass_count("talk")}" + " y " + "#{subclass_count("workshop")} #{t("event.subclasses.workshop")}" 
          # .to_sentence(:two_words_connector => ' through ')
        end
      end
      column do
          panel "Recent events" do
              para "Welcome to ActiveAdmin."
          end
      end


    end
    end


    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
