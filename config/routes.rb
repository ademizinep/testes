Rails.application.routes.draw do
  resources :people, defaults: { format: :json }, only: [:index, :show] do
    collection do
      get ':id/forms' => 'people#forms'
    end
  end
  resources :forms, defaults: { format: :json }, only: [:index, :show]
end
