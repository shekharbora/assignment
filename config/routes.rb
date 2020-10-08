Rails.application.routes.draw do
	
	root 'contacts#new'
	get '/contacts', to: 'contacts#new'
	post '/contacts', to: 'contacts#create'
	match '*path' => redirect('/contacts'), via: :get #redirect all to the root path

end
