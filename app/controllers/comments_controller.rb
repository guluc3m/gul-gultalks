class CommentsController < ApplicationController

  # Stores the new comment in the database.
  def create
    @conference = Conference.friendly.find(params[:conference_id])
    @event = Event.where(conference_id: @conference.id).friendly.find(params[:event_id])

    unless @conference.active
      redirect_to conference_event_path(@conference, @event)
    end

    @commentable = find_commentable
    @comment = @commentable.comments.build(comment_params)

    if verify_recaptcha
      if @comment.save
        flash[:notice] = "Successfully created comment."
        redirect_to conference_event_url(@conference, @event) and return
      else
        flash[:error] = "Error adding comment."
      end

    else
      flash[:error] = "Recaptcha error."

      unless comment_params[:parent_id].empty?
        redirect_to new_comment_path(@conference, @event, parent_id: comment_params[:parent_id]) and return
      end

      redirect_to conference_event_url(@conference, @event) and return
    end
  end

  # Shows the comment form.
  #
  # This method is called when creating a new response to an already existing
  # comment. Regular comments are created from the `show` method in the
  # `events` controller and directly call the `create` method.
  def new
    @conference = Conference.friendly.find(params[:conference_id])
    @event = Event.where(conference_id: @conference.id).friendly.find(params[:event_id])

    unless @conference.active
      redirect_to conference_event_path(@conference, @event) and return
    end

    @parent_id = params.delete(:parent_id)
    @parent = Comment.find(@parent_id)
    @commentable = find_commentable
    @comment = Comment.new( :parent_id => @parent_id,
                            :commentable_id => @commentable.id,
                            :commentable_type => @commentable.class.to_s)
  end

  private

  # Finds the parent object of the comment.
  #
  # Comments may be attached to activities or other comments (responses).
  def find_commentable
    params.each do |name, value|
      if ["parent_id", "commentable_id"].include? name
        return name.find(value)
      elsif name.eql?("event_id")
        conference = Conference.friendly.find(params[:conference_id])
        return Event.where(conference_id: conference.id).friendly.find(value)
      end
    end

    nil
  end

  def comment_params
    params.require(:comment).permit(:content, :email, :event_id, :name, :parent_id)
  end
end
