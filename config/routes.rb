Rails.application.routes.draw do
resources :spices, only: [:index, :create, :update, :destroy]
end

#GET = show and index select all from table
#POST = create .create
#PATCH = update = .update
#DELETE = destroy 

