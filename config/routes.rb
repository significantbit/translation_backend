Rails.application.routes.draw do
  devise_for :users

  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/, defaults: {locale: "en"} do
    resources :translations
  end

  root to: 'translations#index'
end
