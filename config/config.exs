# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :elixir_inmana,
  ecto_repos: [ElixirInmana.Repo]

# Configures the endpoint
config :elixir_inmana, ElixirInmanaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "dXKv0lmyTU83Vtn/sQkB3lOIBPxXtvuyBpkHim2bz/WoS7VoD2UjZ7bGYBQp4SxY",
  render_errors: [view: ElixirInmanaWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: ElixirInmana.PubSub,
  live_view: [signing_salt: "c8gexhY8"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
