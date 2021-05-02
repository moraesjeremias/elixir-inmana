defmodule ElixirInmanaWeb.RestaurantsController do
  use ElixirInmanaWeb, :controller

  alias ElixirInmana.Restaurant
  alias ElixirInmana.Restaurants.Create

  alias ElixirInmanaWeb.FallbackController

  action_fallback FallbackController

  def create_restaurant(conn, request_params) do
    with {:ok, %Restaurant{} = restaurant} <- Create.call(request_params) do
      conn
      |> put_status(:created)
      |> render("create_response.json", restaurant: restaurant)
    end
  end
end
