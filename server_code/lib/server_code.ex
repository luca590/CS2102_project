defmodule ServerCode do
  use Application
  require Logger    #diff btwn use and require??

  def start(_type, _args) do
    children = [
      Plug.Adapters.Cowboy.child_spec(:http, ServerCode.Router, [], port: 8000)
    ]

    Logger.info "Application is running!"

    Supervisor.start_link(children, strategy: :one_for_one)
  end
end

