defmodule ElixirInmanaWeb.RestaurantsController do
  use ElixirInmanaWeb, :controller

  alias ElixirInmana.Restaurant
  alias ElixirInmana.Restaurants.Create

  def create_restaurant(conn, request_params) do
    with {:ok, %Restaurant{} = restaurant} <- Create.call(request_params) do
      conn
      |> put_status(:ok)
      |> render("create_response.json", restaurant: restaurant)
    end
  end
end
