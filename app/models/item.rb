class Item < ApplicationRecord
  with_options presence: true do
    validates :title
    validates :style_text
    validates :images, :images_type, :images_length
  end

  belongs_to :user
  has_many_attached :images
  has_many :comments, dependent: :destroy
  has_many :favorites

  private

  def images_type
    images.each do |image|
      errors.add(:style_image, 'はJPGまたはPNG形式でアップロードしてください') unless image.blob.content_type.in?(%('image/jpeg image/png'))
    end
  end

  def images_length
    if images.length >= 7
      errors.add(:style_image, 'は6枚以内にしてください')
    else
      images.length <= 6
    end
  end
end
