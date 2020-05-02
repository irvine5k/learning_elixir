defmodule TasklistWeb.PageController do
  use TasklistWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
