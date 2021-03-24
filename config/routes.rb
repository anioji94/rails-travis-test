Rails.application.routes.draw do
  root "articles#index"
	
	resources :articles # bin/rails routes allows you to see what routes are avaialable!
	# The resources method sets up a URL and path helper methods
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end