class Contact < ApplicationRecord
	 
	 validates_presence_of :first_name, :last_name, :email,  :message
	 validates :phone_number, presence: true, numericality: true
	 
end
