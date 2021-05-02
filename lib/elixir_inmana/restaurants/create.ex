defmodule ElixirInmana.Restaurants.Create do
  alias ElixirInmana.{Restaurant, Repo}

  def call(args) do
    args
    |> Restaurant.changeset()
    |> Repo.insert()
    |> handle_insert()
  end

  def handle_insert({:ok, %Restaurant{}} = result), do: result

  def handle_insert({:error, result}),
    do: {:error, %{result: result, status: :bad_request}}
end
