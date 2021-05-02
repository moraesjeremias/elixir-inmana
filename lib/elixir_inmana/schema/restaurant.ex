defmodule ElixirInmana.Restaurant do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}

  schema "restaurant" do
    field :name, :string
    field :email, :string
    timestamps()
  end

  # ChangeSet for casting and validations
  def changeset(parameters) do
    %__MODULE__{}
    |> cast(parameters, [:email, :name])
    |> validate_required([:email, :name])
    |> validate_length(:name, min: 2)
    |> unique_constraint([:email])
    |> validate_format(:email, ~r/@/)
  end
end
