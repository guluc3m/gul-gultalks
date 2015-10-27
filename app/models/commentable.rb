require 'active_support/concern'
 
module Commentable
  extend ActiveSupport::Concern
 
  included do
    before_filter :comments, only: [:show]
  end
 
  def comments
    @commentable = find_commentable
    @comments = @commentable.comments.sort_by { |comment| comment.created_at }
    @comment = Comment.new
    @avatar = RubyIdenticon
  end
 
  private
 
  def find_commentable
    conference = Conference.friendly.find(params[:conference_id])
    return params[:controller].singularize.classify.constantize.find(Event.where(conference_id: conference.id).friendly.find(params[:id]).id)
  end
 
end
