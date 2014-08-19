class CommentsController < ApplicationController

  def create
    @commentable = find_commentable
    @comment = @commentable.comments.build(params[:comment])
    if @comment.save
      flash[:notice] = "Successfully created comment."
      redirect_to conference_event_url(params[:conference_id], params[:event_id])
    else
      flash[:error] = "Error adding comment."
    end
  end

  def new
    @parent_id = params.delete(:parent_id)
    @commentable = find_commentable
    @comment = Comment.new( :parent_id => @parent_id,
                            :commentable_id => @commentable.id,
                            :commentable_type => @commentable.class.to_s)
    puts @parent_id
    puts @commentable
    puts @comment
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
end
