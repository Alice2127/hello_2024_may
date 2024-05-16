defmodule HelloWeb.ClassController do
  use HelloWeb, :controller

  def index(conn, _params) do
    conn
    |> put_status(301)
    |> redirect(to: ~p"/users")
  end
end
