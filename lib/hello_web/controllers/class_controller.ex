defmodule HelloWeb.ClassController do
  use HelloWeb, :controller

  def index(conn, _params) do
    redirect(conn, to: ~p"/users")
  end
end
