Rails.application.routes.draw do
  get 'books/main'

  get 'books/book_prices'

  get 'sign_up/name'

  get 'sign_up/index'

  get 'sign_up/show'

  get 'sign_up/change'

  get 'sign_up/order'

  get 'sign_up/deliver'

  get 'main/welcome'

  get 'main/goodbye'

  root 'main#welcome'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
