defmodule RenovateHexExternalRepo.Repo do
  use Ecto.Repo,
    otp_app: :renovate_hex_external_repo,
    adapter: Ecto.Adapters.Postgres
end
