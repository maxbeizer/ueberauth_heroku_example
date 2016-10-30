# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :ueberauth_heroku_example,
  ecto_repos: [UeberauthHerokuExample.Repo]

# Configures the endpoint
config :ueberauth_heroku_example, UeberauthHerokuExample.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "grL1PwTfU3zqycBIdxySV6FLgsy0xaf/Ucgx/CiggTqDz3VmfbsBaNAZz0FExiZd",
  render_errors: [view: UeberauthHerokuExample.ErrorView, accepts: ~w(html json)],
  pubsub: [name: UeberauthHerokuExample.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
