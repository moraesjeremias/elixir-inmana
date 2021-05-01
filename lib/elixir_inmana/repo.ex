defmodule ElixirInmana.Repo do
  use Ecto.Repo,
    otp_app: :elixir_inmana,
    adapter: Ecto.Adapters.Postgres
end
