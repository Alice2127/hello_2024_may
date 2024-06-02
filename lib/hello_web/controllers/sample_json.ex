defmodule HelloWeb.SampleJSON do
  def index(%{foo: foo, bar: bar}) do
    %{data: %{foo: foo, bar: bar}}
  end
end
