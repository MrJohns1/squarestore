defmodule Squarestore.Products do

	# Imports
	import Ecto.Query

	#Alias
	alias Squarestore.Repo
	alias Squarestore.Products
	alias Squarestore.Products.Product

	def create_product(productdata) do
		# Logger.debug("user_address = #{inspect(user_address)}")
		%Product{}
		|> Product.changeset(productdata)
		|> Repo.insert()
	end
end
