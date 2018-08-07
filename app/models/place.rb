class Place < ApplicationRecord
  reverse_geocoded_by :latitude, :longitude
  after_validation :geocode

  mount_uploader :image, PlaceImageUploader
  mount_uploader :thumb, PlaceThumbUploader
end
