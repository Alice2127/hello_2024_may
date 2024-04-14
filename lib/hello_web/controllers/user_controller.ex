defmodule HelloWeb.UserController do
  use HelloWeb, :controller

  def index(conn, _params) do
    text(conn, "Hello! This is the result of piyopiyoex #29")
  end
end
