module PublicCommentsHelper

  def render_comments
    # Create the object for a new comment
    @public_comment = PublicComment.new
    # Render the form
    render "partials/public_comments"
  end

end
