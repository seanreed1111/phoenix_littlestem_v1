# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_littlestem_v1,
  ecto_repos: [PhoenixLittlestemV1.Repo]

# Configures HAML
config :phoenix, :template_engines,
  haml: PhoenixHaml.Engine
  
# Configures the endpoint
config :phoenix_littlestem_v1, PhoenixLittlestemV1.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Nbr3yDIHwFw07fMqa7U6VtU1xCNxI4sY7EyUpMpKvm36yOJ3HUHYxX1tbzKtbPfu",
  render_errors: [view: PhoenixLittlestemV1.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixLittlestemV1.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
