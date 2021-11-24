class Comment < ApplicationRecord
  validates :comments, :presence true

  belongs_to :user
  belongs_to :item
end
