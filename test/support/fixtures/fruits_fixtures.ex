defmodule Hello.FruitsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Hello.Fruits` context.
  """

  @doc """
  Generate a fruit.
  """
  def fruit_fixture(attrs \\ %{}) do
    {:ok, fruit} =
      attrs
      |> Enum.into(%{
        name: "some name"
      })
      |> Hello.Fruits.create_fruit()

    fruit
  end
end
