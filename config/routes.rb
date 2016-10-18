Rails.application.routes.draw do

  get '/' => 'welcome#index'
  get '/welcome/(:name)' => 'welcome#show'
# get '/chew/:flavor' => 'welcome#bubblegum'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
