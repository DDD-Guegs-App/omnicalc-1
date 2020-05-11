Rails.application.routes.draw do

  # get("",{:controller => "application", :action => ""})
  
  get("square/new",{:controller => "application", :action => "blank_square_form"})
  get("square/results",{:controller => "application", :action => "calculate_square"})
  
  get("add/new",{:controller => "application", :action => "blank_add_form"})
  #get("square/new",{:controller => "application", :action => "blank_square_form"})
  get("/",{:controller => "application", :action => "homepage"})

  # Write your routes above this line
  # =================================

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
