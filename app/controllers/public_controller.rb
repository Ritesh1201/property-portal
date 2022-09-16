class PublicController < ApplicationController
  def index
    if current_user
      if current_user.role == 'seller'
        @properties = current_user.properties
      else
        @properties = Property.where(status: false)
      end
    else
      @properties = Property.all
    end

  end
end
