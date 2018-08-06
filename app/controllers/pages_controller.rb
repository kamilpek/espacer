class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:control, :users]

  def home
    @hash = Gmaps4rails.build_markers(@places) do |place, marker|
      marker.lat place.latitude
      marker.lng place.longitude
      marker.infowindow render_to_string(:partial => "infowindow", :locals => { :object => place.id, :name => place.name, :desc => place.desc, :image_thumb => place.thumb.url})
      marker.picture({
                      :url    => "http://res.cloudinary.com/traincms-herokuapp-com/image/upload/c_scale,w_32/v1533410636/dotka_mswdg8.png",
                      :width  => 32,
                      :height => 32,
                      :scaledWidth => 64, # Scaled width is half of the retina resolution; optional
                      :scaledHeight => 64, # Scaled width is half of the retina resolution; optional
                     })
    end
  end

  def control
  end

  def users
    @users = User.all
  end
end
