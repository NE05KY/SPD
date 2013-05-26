Spd::Application.routes.draw do
  root to: "pages#index"

  # Admin panel
  namespace :root do
    root to: 'admin_pages#index', as: :roots
    controller :admin_sessions do
      get 'login' => :new
      post 'login' => :create
      delete 'logout' => :destroy
    end

    resources :admins
  end

  # Teachers
  controller :teachers do
    get "/teachers" => :index
    get "/teachers/:id" => :show, as: :teacher
  end

  # Subjects
  controller :subjects do
    get "/subjects" => :index
    get "/subjects/:id" => :show, as: :subject
  end

  # Pages
  get "pages/about"
  get "pages/help"
end
