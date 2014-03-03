class RegisterController < ApplicationController
  def index
  	Season.all = @seasons
  end
end
