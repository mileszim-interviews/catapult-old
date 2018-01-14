Rails.application.routes.draw do
  jsonapi_resources :breeds do
    jsonapi_resource :tags, only: [:show, :create]
  end

  jsonapi_resources :tags
end
