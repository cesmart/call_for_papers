defmodule CallForPapers.Repo do
  use Ecto.Repo,
    otp_app: :call_for_papers,
    adapter: Ecto.Adapters.Postgres
end
