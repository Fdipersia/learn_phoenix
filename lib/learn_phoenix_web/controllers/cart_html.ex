defmodule LearnPhoenixWeb.CartHTML do
  use LearnPhoenixWeb, :html

  alias LearnPhoenix.ShoppingCart

  import Phoenix.HTML.Form

  embed_templates "cart_html/*"

  def currency_to_str(%Decimal{} = val), do: "$#{Decimal.round(val, 2)}"
end
