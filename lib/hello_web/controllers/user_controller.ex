defmodule HelloWeb.UserController do
  use HelloWeb, :controller

  def index(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    text(conn, "Hello! This is the result of piyopiyoex #29")
    # render(conn, :home, layout: false)
  end
end
