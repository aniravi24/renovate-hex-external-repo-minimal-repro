defmodule RenovateHexExternalRepo.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      RenovateHexExternalRepo.Repo,
      # Start the Telemetry supervisor
      RenovateHexExternalRepoWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: RenovateHexExternalRepo.PubSub},
      # Start the Endpoint (http/https)
      RenovateHexExternalRepoWeb.Endpoint
      # Start a worker by calling: RenovateHexExternalRepo.Worker.start_link(arg)
      # {RenovateHexExternalRepo.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: RenovateHexExternalRepo.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    RenovateHexExternalRepoWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
