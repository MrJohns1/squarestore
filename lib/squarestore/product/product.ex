defmodule Squarestore.Products do

	# Imports
	import Ecto.Query

	#Alias
	alias Squarestore.Repo
	alias Squarestore.Products
	alias Squarestore.Products.Product


	#Add a product
	def create_product(productdata) do
		# Logger.debug("user_address = #{inspect(user_address)}")
		%Product{}
		|> Product.changeset(productdata)
		|> Repo.insert()
	end

	# Listing up all the products
	def list_products() do
		Repo.all(Product)
	end



end
