class Portfolio < ApplicationRecord

  validates_presence_of :title, :image, :body, :thumb_image
end
