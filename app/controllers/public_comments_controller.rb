class PublicCommentsController < ApplicationController

  def index
    @public_comments = PublicComment.scoped
    @public_comment = PublicComment.new
  end

  def show
    @public_comment = PublicComment.find(params[:id])
  end

  def new
    @public_comment = PublicComment.new(parent_id: params[:parent_id])
  end

  def create
    @public_comment = PublicComment.new(params[:public_comment])
    @public_comment.event_id = Event.friendly.find(params[:event_id]).id
    if @public_comment.save
      redirect_to conference_event_path(params[:conference_id], params[:event_id])
    else
      render :new
    end
  end

end
