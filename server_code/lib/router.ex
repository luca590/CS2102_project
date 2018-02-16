defmodule ServerCode.Router do
  use Plug.Router

  plug :match
  plug :dispatch

  get "/" do
    send_resp(conn, 200, "Successful test!")
  end

  match _, do: send_resp(conn, 404, "404 - site not setup for this page")

end 
