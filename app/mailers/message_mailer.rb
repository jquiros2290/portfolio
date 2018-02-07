class MessageMailer < ApplicationMailer
  default from: "jquirosportfolio@gmail.com"
  default to: "jquiros2290@gmail.com"

  def new_message(contact)
    @contact = contact
    
    mail subject: "Message from #{contact.name}"
  end

end
