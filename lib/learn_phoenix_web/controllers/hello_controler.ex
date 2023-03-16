defmodule LearnPhoenixWeb.HelloController do
  use LearnPhoenixWeb, :controller
  @doc """
  Controller Plug
  plug LearnPhoenixWeb.Plugs.Locale, "en" when action in [:index]
  """

  def index(conn, _params) do
    render(conn, :index)
  end

  def show(conn, %{"messenger" => messenger}) do
    render(conn, :show, messenger: messenger)
  end
end
