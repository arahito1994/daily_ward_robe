class Item < ApplicationRecord

  with_options presence: true do
    validates :title
    validates :style_text
    validates :images
  end
  

  belongs_to :user
  has_many_attached :images
end
