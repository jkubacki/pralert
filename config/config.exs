# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :pralert,
  ecto_repos: [Pralert.Repo]

# Configures the endpoint
config :pralert, Pralert.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "MBL1jVKrXt0Vh72UzaDpTzTX88mlwNP9YydmS9Lvouy/XRWxhezt7ygDkZyINE5+",
  render_errors: [view: Pralert.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Pralert.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
