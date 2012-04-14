Bloggy::Application.routes.draw do
  resources :posts do
    post "/search", action: :index, as: "search", on: :collection
  end

  root to: "posts#index"
end
