Rails.application.routes.draw do
  get 'works/index'
  root 'works#index'
  delete 'works/delete'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
