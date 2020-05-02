defmodule Tasklist.Repo do
  use Ecto.Repo,
    otp_app: :tasklist,
    adapter: Ecto.Adapters.Postgres
end
