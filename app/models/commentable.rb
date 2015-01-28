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
  end
 
  private
 
  def find_commentable
    return params[:controller].singularize.classify.constantize.find(Event.friendly.find(params[:id]).id)
  end
 
end
