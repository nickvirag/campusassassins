class RegisterController < ApplicationController
  def index
  	@seasons = Season.all
  end
end
