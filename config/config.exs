# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :cowboy_issue,
  ecto_repos: [CowboyIssue.Repo]

# Configures the endpoint
config :cowboy_issue, CowboyIssueWeb.Endpoint,
  url: [host: "localhost"],
  http: [log_error_on_incomplete_requests: false],
  secret_key_base: "sqwZF9nHRt1//tIupe3x/Gdun4PeKEX9gCAOEVCN5KB50rvDBhTKtilgAwJqgShP",
  render_errors: [view: CowboyIssueWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: CowboyIssue.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
