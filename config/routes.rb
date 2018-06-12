Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # * route for '/brews' that displays all of your coffees as links to their show pages
  # * route to create a new brew
  # * route to edit a brew
  # * route to delete a brew
  # * route to '/brews/strongest' find the brews with the highest strength
  resources :brews, only: [:index, :show, :create, :new, :edit, :update, :destroy]



end
