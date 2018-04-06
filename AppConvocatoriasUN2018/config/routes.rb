#                             Prefix Verb   URI Pattern                              Controller#Action
#         new_applicant_user_session GET    /applicant_users/sign_in(.:format)       devise/sessions#new
#             applicant_user_session POST   /applicant_users/sign_in(.:format)       devise/sessions#create
#     destroy_applicant_user_session DELETE /applicant_users/sign_out(.:format)      devise/sessions#destroy
#        new_applicant_user_password GET    /applicant_users/password/new(.:format)  devise/passwords#new
#       edit_applicant_user_password GET    /applicant_users/password/edit(.:format) devise/passwords#edit
#            applicant_user_password PATCH  /applicant_users/password(.:format)      devise/passwords#update
#                                    PUT    /applicant_users/password(.:format)      devise/passwords#update
#                                    POST   /applicant_users/password(.:format)      devise/passwords#create
# cancel_applicant_user_registration GET    /applicant_users/cancel(.:format)        devise/registrations#cancel
#    new_applicant_user_registration GET    /applicant_users/sign_up(.:format)       devise/registrations#new
#   edit_applicant_user_registration GET    /applicant_users/edit(.:format)          devise/registrations#edit
#        applicant_user_registration PATCH  /applicant_users(.:format)               devise/registrations#update
#                                    PUT    /applicant_users(.:format)               devise/registrations#update
#                                    DELETE /applicant_users(.:format)               devise/registrations#destroy
#                                    POST   /applicant_users(.:format)               devise/registrations#create


#             new_admin_user_session GET    /admin_users/sign_in(.:format)           devise/sessions#new
#                 admin_user_session POST   /admin_users/sign_in(.:format)           devise/sessions#create
#         destroy_admin_user_session DELETE /admin_users/sign_out(.:format)          devise/sessions#destroy
#           new_admin_user_password GET    /admin_users/password/new(.:format)      devise/passwords#new
#           edit_admin_user_password GET    /admin_users/password/edit(.:format)     devise/passwords#edit
#               admin_user_password PATCH  /admin_users/password(.:format)          devise/passwords#update
#                                   PUT    /admin_users/password(.:format)          devise/passwords#update
#                                   POST   /admin_users/password(.:format)          devise/passwords#create
#     cancel_admin_user_registration GET    /admin_users/cancel(.:format)            devise/registrations#cancel
#       new_admin_user_registration GET    /admin_users/sign_up(.:format)           devise/registrations#new
#       edit_admin_user_registration GET    /admin_users/edit(.:format)              devise/registrations#edit
#           admin_user_registration PATCH  /admin_users(.:format)                   devise/registrations#update
#                                   PUT    /admin_users(.:format)                   devise/registrations#update
#                                   DELETE /admin_users(.:format)                   devise/registrations#destroy
#                                   POST   /admin_users(.:format)                   devise/registrations#create
#                       auxstdoffers GET    /auxstdoffers(.:format)                  auxstdoffers#index
#                  auxstdoffers_list GET    /auxstdoffers/list(.:format)             auxstdoffers#show
#                 lifeusponsoroffers GET    /lifeusponsoroffers(.:format)            lifeusponsoroffers#index
#           lifeusponsoroffers_list GET    /lifeusponsoroffers/list(.:format)       lifeusponsoroffers#show
#                     mongrantoffers GET    /mongrantoffers(.:format)                mongrantoffers#index
#               mongrantoffers_list GET    /mongrantoffers/list(.:format)           mongrantoffers#show
#                 socecsupportoffers GET    /socecsupportoffers(.:format)            socecsupportoffers#index
#           socecsupportoffers_list GET    /socecsupportoffers/list(.:format)       socecsupportoffers#show
#                              login POST   /login(.:format)                         applicant_user#login
#                           register POST   /register(.:format)                      applicant_user#register

Rails.application.routes.draw do
  devise_for :applicant_users
  devise_for :admin_users
  # devise_for :admin_users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'devise/sessions#new'
 get '/auxstdoffers' => 'auxstdoffers#index'
 get '/auxstdoffers/list' => 'auxstdoffers#show'
 get '/lifeusponsoroffers' => 'lifeusponsoroffers#index'
 get '/lifeusponsoroffers/list' => 'lifeusponsoroffers#show'
 get '/mongrantoffers' => 'mongrantoffers#index'
 get '/mongrantoffers/list' => 'mongrantoffers#show'
 get '/socecsupportoffers' => 'socecsupportoffers#index'
 get '/socecsupportoffers/list' => 'socecsupportoffers#show'
 
 post '/login' => 'applicant_user#login'
 post '/register' => 'applicant_user#register'
 
end
