Rails.application.routes.draw do

  # get("",{:controller => "application", :action => ""})
  get("square/new",{:controller => "application", :action => "blank_square_form"})
  get("add/new",{:controller => "application", :action => "blank_square_form"})
  #get("square/new",{:controller => "application", :action => "blank_square_form"})
  #get("square/new",{:controller => "application", :action => "blank_square_form"})

  # Write your routes above this line
  # =================================

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
