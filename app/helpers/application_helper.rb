module ApplicationHelper
  def page_title(title = nil)
    if title.present?
      content_for :page_title, title
    else
      content_for?(:page_title) ? "GulTalks" + ' | ' + content_for(:page_title) : "GulTalks"
    end
  end
end
