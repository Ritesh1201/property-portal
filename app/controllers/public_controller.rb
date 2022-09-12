class PublicController < ApplicationController
  def index
    @properties = Property.latest 
  end
end
