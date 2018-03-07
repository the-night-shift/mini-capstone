Rails.application.routes.draw do
  get '/all-products' => 'products#every_product'
  get '/first-product' => 'products#first'
  get '/second-product' => 'products#second'
end
