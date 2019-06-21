use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :call_for_papers, CallForPapersWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :call_for_papers, CallForPapers.Repo,
  username: "postgres",
  password: "postgres",
  database: "call_for_papers_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
