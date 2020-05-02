defmodule Tasklist.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Tasklist.Repo,
      # Start the Telemetry supervisor
      TasklistWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Tasklist.PubSub},
      # Start the Endpoint (http/https)
      TasklistWeb.Endpoint
      # Start a worker by calling: Tasklist.Worker.start_link(arg)
      # {Tasklist.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Tasklist.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    TasklistWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
