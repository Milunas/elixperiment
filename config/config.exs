# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :api_first,
  ecto_repos: [ApiFirst.Repo]

# Configures the endpoint
config :api_first, ApiFirst.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "TI06b3v7tNADwE+EvWRW8feRpm8S/mlqkvOcG+96GQvkTAkMhiG1lx80+EQw0Ngm",
  render_errors: [view: ApiFirst.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ApiFirst.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
