Rails.application.routes.draw do
  
  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/sitemap', to: 'static_pages#sitemap'
  get  '/pressreleases', to: 'static_pages#pressreleases'
  get '/signup', to: 'users#new'
end