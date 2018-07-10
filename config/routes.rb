Rails.application.routes.draw do

  	namespace :api do
      	namespace :v1 do
        	resources :naps
      	end
    end

end
