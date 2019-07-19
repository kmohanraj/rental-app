# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :rental_app,
  ecto_repos: [RentalApp.Repo]

# Configures the endpoint
config :rental_app, RentalAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "REDFbyDzZp45ZWFiMF582FSq8c/6piSX5plqTxxRtDgBnBSMiJC6JS3O35INePh+",
  render_errors: [view: RentalAppWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: RentalApp.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
