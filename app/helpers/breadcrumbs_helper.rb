module BreadcrumbsHelper

  # Renders breadcrumbs for event views
  def event_breadcrumbs(conference, event, action="")
    crumbs = []

    crumbs.push({ "text": conference.title, "link": conference_path(conference) })

    unless event.nil?
      crumbs.push({ "text": event.title, "link": conference_event_path(conference, event) })
    end

    if action.eql? "edit"
      crumbs.push({ "text": t("event.edit_event") })

    elsif action.eql? "new"
      crumbs.push({ "text": t("event.new_event") })

    elsif action.eql? "speaker"
      crumbs.push({ "text": t("speaker.propose") })

    elsif action.eql? "vote"
      crumbs.push({ "text": t("to_vote")} )

    end

    render "partials/breadcrumbs", crumbs: crumbs
  end

  # Renders breadcrumbs for conference views
  def home_breadcrumbs(action="")
    crumbs = []

    crumbs.push({ "text": t("home"), "link": root_path })

    if action.eql? "api"
      crumbs.push({ "text": "API" })

    elsif action.eql? "conferences"
      crumbs.push({ "text": t("conference.list") })
    end

    render "partials/breadcrumbs", crumbs: crumbs
  end
end
