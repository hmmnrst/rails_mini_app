Rails.application.initialize!

Rails.application.routes.draw do
  get 'jobs', to: 'sleep_job#index'
  root          to: 'mini#index', via: :all
  match '*any', to: 'mini#index', via: :all
end

run Rails.application
