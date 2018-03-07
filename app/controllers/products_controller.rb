class ProductsController < ApplicationController
  def every_product
    # grab the data from the db
    products = Product.all
    # show the data to to the user
    render json: products.as_json
  end
end
