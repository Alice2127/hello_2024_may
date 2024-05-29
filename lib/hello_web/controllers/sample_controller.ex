defmodule HelloWeb.SampleController do
  use HelloWeb, :controller

  def index(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :index, foo: "baz", bar: 123)
  end
end
