defmodule Squarestore.Products.Product do
  use Ecto.Schema
  import Ecto.Changeset


  schema "products" do
    field :alternative_products, :integer
    field :base_price, :integer
    field :image, :map
    field :stock, :integer
    field :name, :string
    field :pnr, :string
    field :summary, :string
    field :supplier, :integer

    timestamps()
  end

  @doc false
  def changeset(products, attrs) do
    products
    |> cast(attrs, [:name, :image, :pnr, :summary, :base_price, :stock, :supplier, :alternative_products])
    |> validate_required([:name, :pnr, :summary, :base_price, :stock, :supplier, :alternative_products])
  end
end
