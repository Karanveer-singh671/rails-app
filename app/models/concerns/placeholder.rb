module Placeholder
  extend ActiveSupport::Concern
  # colon makes sure need to add args in that specific order
  def self.image_generator(height:, width:)
    "http://placehold.it/#{height}x#{width}"
  end
end