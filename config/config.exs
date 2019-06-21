# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :call_for_papers,
  ecto_repos: [CallForPapers.Repo]

# Configures the endpoint
config :call_for_papers, CallForPapersWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Xv3GG6qUsF5X/VSQCd4yL0Yu03kQgwKXxfq7W2Yxsr3rKW64Chq9RPqjTjIY2gfk",
  render_errors: [view: CallForPapersWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: CallForPapers.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
