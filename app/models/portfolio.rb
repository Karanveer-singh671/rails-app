class Portfolio < ApplicationRecord
  include Placeholder
  validates_presence_of :title, :image, :body, :thumb_image

  scope :portfolio_items, -> {where(subtitle: 'Ruby on Rails')}

  after_initialize :set_defaults

  def set_defaults
    self.image ||=  Placeholder.image_generator(height:'600', width: '400')
    self.thumb_image ||= Placeholder.image_generator(height:'340', width: '200')
  end
end
