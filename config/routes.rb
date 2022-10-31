  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  get("/customers/:id",   to: "customers#show")
  post("/customers/:id/items",   to: "customers#create")
end
