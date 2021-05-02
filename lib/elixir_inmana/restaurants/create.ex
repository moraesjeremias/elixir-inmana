defmodule ElixirInmana.Restaurants.Create do
  alias ElixirInmana.{Restaurant, Repo}

  def call(args) do
    args
    |> Restaurant.changeset()
    |> Repo.insert()
    |> handle_insert()
  end

  defp handle_insert({:ok, %Restaurant{}} = result), do: result

  defp handle_insert({:error, %Restaurant{}} = result),
    do: {:error, %{message: "We got an error: #{result}", status: :bad_request}}
end
