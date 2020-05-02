# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :tasklist,
  ecto_repos: [Tasklist.Repo]

# Configures the endpoint
config :tasklist, TasklistWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "WR2IDMdybAleteU7ETONcyMDKqtJjE+KonbGYdZZqlxbH6m6+C48Hpkcvn4DGPA8",
  render_errors: [view: TasklistWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Tasklist.PubSub,
  live_view: [signing_salt: "W5eWejyL"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
