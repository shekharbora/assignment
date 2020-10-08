class Contact < ApplicationRecord
	 validates :first_name, presence: true
	 validates :last_name, presence: true
	 validates :email, presence: true
	 validates :phone_number, presence: true, numericality: true
	 validates :message, presence: true
end
