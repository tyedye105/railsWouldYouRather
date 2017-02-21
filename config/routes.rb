Rails.application.routes.draw do
  root to: "questions#index"
  resources :questions do
    resources :selections, :except => [:index, :edit, :destroy, :show, :new]
  end
end
