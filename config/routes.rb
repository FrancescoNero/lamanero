Lamanero::Application.routes.draw do

  get '/contacts' => redirect('/not_implemented.html')
  get '/events' => redirect('/not_implemented.html')

  resources :admins, :only => [:index]

  get "categories/sofas"  => "categories#show", :id => "1"
  get "categories/chairs" => "categories#show", :id => "2"
  get "categories/tables" => "categories#show", :id => "3"
  get "categories/lamps"  => "categories#show", :id => "4"
  resources :categories, :only => [:index, :show]

  resources :designers, :only => [:index, :show, :new, :create]

  resources :infos, :only => [:index, :show]

  resources :partners, :only => [:index, :show]

  get 'products/dna' => 'products#dna'
  get 'products/top' => 'products#top'
  resources :products, :only => [:index, :show, :new, :create] do
    member do
      get 'retailers'
    end
  end

  resources :retailers, :only => [:index, :show, :new, :create]

  get "rooms/living"  => "rooms#show", :id => "1"
  get "rooms/kitchen" => "rooms#show", :id => "2"
  get "rooms/bed"     => "rooms#show", :id => "3"
  resources :rooms, :only => [:index, :show]

  resources :services, :only => [:index, :show]

  root :to => 'home#index'

end
