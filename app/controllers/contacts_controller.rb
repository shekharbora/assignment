class ContactsController < ApplicationController


	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(contact_params)
		if @contact.save
		  ContactMailer.with(contact: @contact).contact_us_email.deliver
	      redirect_to root_path, notice: 'Thanks, We will get back to you soon.'
	    else
	      render :new
	    end		
	end

	def set_locale
		I18n.locale = params[:locale].present? ? params[:locale] : 'en'
	end
	
	private

    def contact_params
      params.require(:contact).permit(:first_name, :last_name, :email, :phone_number, :message)
    end

end
