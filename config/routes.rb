Rails.application.routes.draw do
  namespace :v1 do
    get '/all-products' => 'products#every_product'
    get '/first-product' => 'products#first'
    get '/second-product' => 'products#second'
    get '/any-product' => 'products#any'
    get '/the-product/:id' => 'products#any'
  end
end
