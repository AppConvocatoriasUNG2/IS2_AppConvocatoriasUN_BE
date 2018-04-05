Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 get '/auxstdoffers' => 'auxstdoffers#index'
 get '/auxstdoffers/list' => 'auxstdoffers#show'
 get '/lifeusponsoroffers' => 'lifeusponsoroffers#index'
 get '/lifeusponsoroffers/list' => 'lifeusponsoroffers#show'
 get '/mongrantoffers' => 'mongrantoffers#index'
 get '/mongrantoffers/list' => 'mongrantoffers#show'
 get '/socecsupportoffers' => 'socecsupportoffers#index'
 get '/socecsupportoffers/list' => 'socecsupportoffers#show'
 
end
