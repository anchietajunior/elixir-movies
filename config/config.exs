# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :moviedb,
  ecto_repos: [Moviedb.Repo]

# Configures the endpoint
config :moviedb, MoviedbWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "dDKaG6yBTXgxdMEATwbw3iFHcFCRtNf1kY2zKR4wLw6v8kY8U8pzVoz7lkq7A4aS",
  render_errors: [view: MoviedbWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Moviedb.PubSub,
  live_view: [signing_salt: "0Vo4/OJm"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
