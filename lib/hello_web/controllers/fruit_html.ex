defmodule HelloWeb.FruitHTML do
  use HelloWeb, :html

  embed_templates "fruit_html/*"

  @doc """
  Renders a fruit form.
  """
  attr :changeset, Ecto.Changeset, required: true
  attr :action, :string, required: true

  def fruit_form(assigns)
end
