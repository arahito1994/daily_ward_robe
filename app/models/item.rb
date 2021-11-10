class Item < ApplicationRecord

  with_options presence: true do
    validates :title
    validates :style_text
    validates :image
  end
  

  
end
