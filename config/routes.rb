Rails.application.routes.draw do
  	devise_for :users
  	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  	root "forum_threads#index"

  	resources :forum_threads, only: [:show, :new, :create, :edit, :update, :destroy] do
	put :pinit, on: :member
	put :unpin, on: :member
	resources :forum_posts, only: [:create]
  end
end