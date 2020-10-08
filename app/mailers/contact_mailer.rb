class ContactMailer < ApplicationMailer

  default from: 'notifications@example.com'	
 
 #method for sending email
  def contact_us_email  	
    @contact = params[:contact]  #info@ajackus.com
    mail(to: 'chandu42011@gmail.com', subject: 'Contact Form')
  end

end
