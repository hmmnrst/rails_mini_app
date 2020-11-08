Rails.application.initialize!

Rails.application.routes.draw do
  root          to: 'mini#index', via: :all
  match '*any', to: 'mini#index', via: :all
end
