defmodule Hello.ItemsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Hello.Items` context.
  """

  @doc """
  Generate a item.
  """
  def item_fixture(attrs \\ %{}) do
    {:ok, item} =
      attrs
      |> Enum.into(%{
        name: "some name",
        price: 42
      })
      |> Hello.Items.create_item()

    item
  end
end
