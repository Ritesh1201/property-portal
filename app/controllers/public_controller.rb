class PublicController < ApplicationController
  def index
    if current_user
      if current_user.type == 'seller'
        @properties = current_user.properties
      else
        @properties = Property.where(status: false)
      end
    else
      @properties = Property.all
    end
  end

  def search_property
    @properties = Property.where("(name) ilike ?", "%#{params[:name]}%") if params[:name].present?

    respond_to do |format|
      format.js {render 'search_properties'} 
    end
  end

  # def find_property
  #   @properties = Property.find(params[:property_id])

  #   respond_to do |format|
  #     format.html {render 'find_property'} 
  #   end
  # end
end
