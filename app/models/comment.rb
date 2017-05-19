class Comment < ApplicationRecord
  has_ancestry
  belongs_to :commentable, polymorphic: true

  # Obtain the last ancestor before the comment itself
  def parent
    return self.ancestry.split("/").last
  end
end
