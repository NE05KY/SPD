Spd::Application.routes.draw do
  root to: "pages#index"

  # Admin panel
  namespace :root do
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
  get "root/", to: 'pages#root', as: :roots
end
