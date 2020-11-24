class MainController < ApplicationController

  before_action :authorized!, only: [:custome]
  
  def home
  end

  def custome
  end

end
