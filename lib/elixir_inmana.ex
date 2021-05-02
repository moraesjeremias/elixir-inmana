defmodule ElixirInmana do
  alias ElixirInmana.Restaurants.Create

  defdelegate create_restaurant(args), to: Create, as: :call
end
