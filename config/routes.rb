Rails.application.routes.draw do
  root 'dashboard#index'
  get 'admin_setup/cost_setup'
  get 'admin_setup/department_setup'
  get 'admin_setup/transport_setup'
  get 'admin_setup/report_builder'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :inventories
  resources :file_informations
  resources :supplier_setups
  resources :transport_setups
  resources :cost_setups
  resources :order_confirmations
  resources :inventory_details
  resources :business_classifications
  resources :business_types
  resources :bankings
  resources :company_setups
  resources :departments

  devise_for :users
  resources :shipments
  resources :orders
  resources :customs_service_departments
  resources :simba_systems
  resources :insurances
  resources :kentrades
  resources :ppbs
  resources :proforma_invoices
  resources :bill_of_ladings
  resources :calculations
  resources :users
  resources :ppbs
  end
