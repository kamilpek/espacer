class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :places

  def places
    @places = Place.where(status:true)
  end

end
