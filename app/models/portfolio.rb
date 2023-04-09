class Portfolio < ApplicationRecord

  validates_presence_of :title, :image, :body, :thumb_image

  scope :portfolio_items, -> {where(subtitle: 'Ruby on Rails')}

  after_initialize :set_defaults

  def set_defaults
    self.image ||= "http://placehold.it/600x400"
    self.thumb_image ||= "http://placehold.it/300x200"
  end
end
