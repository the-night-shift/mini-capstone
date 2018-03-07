Rails.application.routes.draw do
  get '/all-products' => 'products#every_product'
end
