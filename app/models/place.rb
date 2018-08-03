class Place < ApplicationRecord
  mount_uploader :image, PlaceImageUploader
  mount_uploader :thumb, PlaceThumbUploader
end
