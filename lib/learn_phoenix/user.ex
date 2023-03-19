defmodule LearnPhoenix.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :bio, :string
    field :email, :string
    field :name, :string
    field :number_of_pets, :integer

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :email, :bio, :number_of_pets])
    |> validate_required([:name, :email, :bio]) # => Every field is required by default, romve it to make it optional
    |> validate_length(:bio, min: 5)
    |> validate_length(:bio, max: 15)
    |> validate_format(:email, ~r/@/)
  end
end
