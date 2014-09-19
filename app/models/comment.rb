class Comment < ActiveRecord::Base
  has_ancestry
  # attr_accessible :content, :email, :event_id, :name, :parent_id
  belongs_to :commentable, polymorphic: true
end
