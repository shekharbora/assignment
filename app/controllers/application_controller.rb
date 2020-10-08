class ApplicationController < ActionController::Base

	before_action :set_locale



	private
	# set locale before_action 
	def set_locale
		I18n.locale = params[:locale].present? ? params[:locale] : 'en'
	end

end
