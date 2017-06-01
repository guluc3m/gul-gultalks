module BreadcrumbsHelper

  # Renders breadcrumbs for event views
  def event_breadcrumbs(conference, event, action="")
    crumbs = []

    crumbs.push({ "text": conference.title, "link": conference_path(conference) })

    unless event.nil?
      crumbs.push({ "text": event.title, "link": conference_event_path(conference, event) })
    end

    case action
      when "edit"
        crumbs.push({ "text": t("views.event.edit_event") })

      when "new"
        crumbs.push({ "text": t("views.event.new_event") })

      when "speaker"
        crumbs.push({ "text": t("views.speaker.propose") })

      when "vote"
        crumbs.push({ "text": t("views.event.to_vote")} )
    end

    render "partials/breadcrumbs", crumbs: crumbs
  end

  # Renders breadcrumbs for conference views
  def home_breadcrumbs(action="")
    crumbs = []

    crumbs.push({ "text": t("defaults.home"), "link": root_path })

    case action
      when "api"
        crumbs.push({ "text": "API" })

      when "conferences"
        crumbs.push({ "text": t("views.conference.list") })
    end

    render "partials/breadcrumbs", crumbs: crumbs
  end
end
