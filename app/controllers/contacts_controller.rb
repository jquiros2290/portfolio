class ContactsController < ApplicationController
  # def new
  #   @message = Message.new
  # end

  def create
    @contact = Contact.new(message_params)
    
    if @contact.valid?
      MessageMailer.new_message(@contact).deliver
      flash[:notice] = "Thanks! Your message has been sent."
      redirect_to root_path
    else
      flash[:alert] = @contact.errors.full_messages
      return redirect_to :back
    end
  end

private

  def message_params
    params.require(:contact).permit(:name, :email, :message)
  end
  
end
