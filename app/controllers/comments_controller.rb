class CommentsController < ApplicationController

  def create
    @event = Event.friendly.find(params[:event_id])
    @conference = Conference.find(@event.conference_id)

    if !@conference.active
      redirect_to conference_event_path(@conference, @event)
    end

    @commentable = find_commentable
    @comment = @commentable.comments.build(comment_params)

    if verify_recaptcha
      if @comment.save
        flash[:notice] = "Successfully created comment."
        redirect_to conference_event_url(@conference, @event)
      else
        flash[:error] = "Error adding comment."
      end
    else
      flash[:error] = "Recaptcha error."
      if !comment_params[:parent_id].empty?
        redirect_to new_comment_path(@conference, @event, parent_id: comment_params[:parent_id])
      else
        redirect_to conference_event_url(@conference, @event)
      end
    end
  end

  def new
    @event = Event.friendly.find(params[:event_id])
    @conference = Conference.find(@event.conference_id)

    if !@conference.active
      redirect_to conference_event_path(@conference, @event)
    end

    @parent_id = params.delete(:parent_id)
    @parent = Comment.find(@parent_id)
    @commentable = find_commentable
    @comment = Comment.new( :parent_id => @parent_id,
                            :commentable_id => @commentable.id,
                            :commentable_type => @commentable.class.to_s)
  end

  private
  def find_commentable
    params.each do |name, value|
      #if name =~ /(.+)_id$/
      if ["parent_id", "commentable_id"].include? name
        return name.find(value)
      elsif name.eql?("event_id")
        return Event.friendly.find(value)
      end
    end
    nil
  end

  def comment_params
    params.require(:comment).permit(:content, :email, :event_id, :name, :parent_id)
  end
end
