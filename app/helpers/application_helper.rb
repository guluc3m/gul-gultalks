module ApplicationHelper

  # Finds a suitable page title for the current page.
  #
  # In the case of activities and conferences, this is usually their own title.
  def page_title(title = nil)
    if title.present?
      content_for :page_title, title
    else
      content_for?(:page_title) ? "GulTalks" + ' | ' + content_for(:page_title) : "GulTalks"
    end
  end
end
