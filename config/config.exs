# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :hyperledger, Hyperledger.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "VaFIvdwH2aishtUT7jQQv+wYGqCwOBFqiwiS/kiwfMECrhXEWJrucN+Qd8SueGzi",
  debug_errors: false,
  pubsub: [name: Hyperledger.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Configuration for Ecto
config :hyperledger, Hyperledger.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: {:system, "DATABASE_URL"}

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
