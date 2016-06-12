class Translation < ApplicationRecord
  mount_uploader :image, ImageUploader
  translates :value

  validates_presence_of :key
  validates_uniqueness_of :key

  default_scope { order(:key) }

  def computed_value
    image.url || value
  end
end
