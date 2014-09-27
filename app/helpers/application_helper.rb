module ApplicationHelper
  def page_title(title = nil)
    if title.present?
      content_for :page_title, title
    else
      content_for?(:page_title) ? "GulTalks" + ' | ' + content_for(:page_title) : "GulTalks"
    end
  end

  #
  # Shorten given Url using bit.ly
  def url_shortener(url)
    bitly = Bitly.client
    bitly.shorten(url)
  end
end
