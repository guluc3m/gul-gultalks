class Comment < ActiveRecord::Base
  has_ancestry
  belongs_to :commentable, polymorphic: true
end
