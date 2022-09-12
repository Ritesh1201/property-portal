class ContactMailer < ApplicationMailer

  def user_email user_id, first_name, last_name, email, message
    @user = User.find(user_id)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @message = message

    if @user.present?
      mail to: @user.email, message: "You have a new contact from Property Management"
    end 
  end
end