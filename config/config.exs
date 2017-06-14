# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :pcf_mysql,
  ecto_repos: [PcfMysql.Repo]

# Configures the endpoint
config :pcf_mysql, PcfMysql.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "5ibU37A5ZmavTaGx0Xn5Qf3PRKQ6tLpP0pe9i2eI8CVZz20gBi8qGZ8Y90rvmwZM",
  render_errors: [view: PcfMysql.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PcfMysql.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
