class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:control, :users]

  def home
  end

  def control
  end

  def users
    @users = User.all
  end
end
