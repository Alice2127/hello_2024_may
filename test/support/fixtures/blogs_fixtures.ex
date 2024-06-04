defmodule Hello.BlogsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Hello.Blogs` context.
  """

  @doc """
  Generate a post.
  """
  def post_fixture(attrs \\ %{}) do
    {:ok, post} =
      attrs
      |> Enum.into(%{

      })
      |> Hello.Blogs.create_post()

    post
  end
end
