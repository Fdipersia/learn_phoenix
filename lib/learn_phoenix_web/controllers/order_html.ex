defmodule LearnPhoenixWeb.OrderHTML do
  use LearnPhoenixWeb, :html

  embed_templates "order_html/*"

  @doc """
  Renders a order form.
  """
  attr :changeset, Ecto.Changeset, required: true
  attr :action, :string, required: true

  def order_form(assigns)
end
