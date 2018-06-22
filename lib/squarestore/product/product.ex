defmodule Squarestore.Products do

	# Imports
	import Ecto.Query

	#Alias
	alias Squarestore.Repo
	alias Squarestore.Product
	alias Squarestore.Product.Products

	def create_product(productdata) do
		# Logger.debug("user_address = #{inspect(user_address)}")
		%Product{}
		|> Product.changeset(productdata)
		|> Repo.insert()
	end
end
