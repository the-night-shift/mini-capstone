class V1::ProductsController < ApplicationController
  def every_product
    # grab the data from the db
    products = Product.all
    # show the data to to the user
    render json: products.as_json
  end

  def first
    product = Product.first
    render json: product.as_json
  end

  def second
    product = Product.second
    render json: product.as_json
  end

  def any
    # get user input
    user_input = params[:id]
    # based on the user input, find a product in the db
    productx = Product.find_by(id: user_input)
    # show that product to the user
    render json: productx.as_json
  end
end
