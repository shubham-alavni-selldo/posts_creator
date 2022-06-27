Rails.application.routes.draw do
  devise_for :users,
  controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations'
  }
  namespace :api do
    namespace :v1 do
      resources :posts do
        resources :comments
        
      end
      get :popular_posts, to: 'posts#popular_posts'
      get :user_posts, to: 'posts#user_posts'
      get :max_comments_by_user, to: 'comments#max_comments_by_user'
      post '/:comment_id/reply', to: 'comments#reply'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
