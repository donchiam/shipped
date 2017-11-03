Rails.application.routes.draw do
  devise_for :users
  resources :jobs
  resources :assignments
  resources :boats
  resources :users

  resources :jobs do
  	resources :boats
  end

  resources :boats do
  	resources :jobs
  end

  post 'add_assignment/:job_id' => 'assignments#add_assignment', as: :add_assignment

  post 'assignments/:id', to: 'assignments#show'

  root "jobs#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

#<td>%= form.label :job %><%= form.select( :job_id, options_for_select(Job.pluck(:name,:id))) %><% end %></td>
