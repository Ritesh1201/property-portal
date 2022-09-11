class PublicController < ApplicationController
  def index
    if user_signed_in?
      redirect_to dashboard_path, flash: { success: "successfully signed in. Welcome to Property Management!" } and return
    end
    @properties = Property.latest 
  end
end
