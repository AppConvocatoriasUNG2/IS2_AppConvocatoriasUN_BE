Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 get '/auxstdoffers' => 'auxstdoffers#index'
 get '/lifeusponsoroffers' => 'lifeusponsoroffers#index'
 get '/mongrantoffers' => 'mongrantoffers#index'
 get '/socecsupportoffers' => 'socecsupportoffers#index'
 
end
