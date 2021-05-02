defmodule ElixirInmanaWeb.RestaurantsView do
  use ElixirInmanaWeb, :view

  def render("create_response.json", %{restaurant: restaurant}) do
    %{
      message: restaurant
    }
  end
end
