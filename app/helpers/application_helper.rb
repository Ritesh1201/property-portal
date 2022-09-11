module ApplicationHelper
  def profile_picture user, width = 100
    thumb = user.image.present? ? user.image.thumb.url : "profile_placeholder.jpg"
    image_tag thumb, width: width, class: "profile-pic img-circle"
  end

  def flash_notification
    flash_message = []

    flash.each do |type, message|
      type = 'success' if type == 'notice'
      type = 'error'   if type == 'alert' || type == 'danger'
      text = "toastr['#{type}']('#{message}');"
      flash_message << text.html_safe unless message.blank?        
    end

    "<script>$(function(){ #{flash_message.join("\n")} });</script>".html_safe if flash_message.any?
  end

end
