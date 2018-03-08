require 'unirest'

p "please select the page you would like to view"

p "[1] All the products"
p "[2] One of the products"

user_input = gets.chomp

base_url = "http://localhost:3000/v1"


if user_input == "1"
  response = Unirest.get("#{base_url}/all-products")
elsif user_input == "2"
  response = Unirest.get("#{base_url}/first-product")
end

puts JSON.pretty_generate(response.body)
