defmodule LearnPhoenixWeb.HelloController do
  use LearnPhoenixWeb, :controller

  @doc """
    Controller Plug
    plug LearnPhoenixWeb.Plugs.Locale, "en" when action in [:index]
  """

  def index(conn, _params) do
    conn
    |> put_flash(:info, "Welcome to Phoenix, from flash info!")
    |> render(:index)
  end

  @doc """
    This is an html response
  """
  # def show(conn, %{"messenger" => messenger}) do
  #   render(conn, :show, messenger: messenger)
  # end

  # To pass more params to the render function we can use assign
  def show(conn, %{"messenger" => messenger}) do
    conn
    |> put_flash(:error, "Let's pretend we have an error.")
    |> assign(:messenger, messenger)
    |> assign(:receiver, "Dwight")
    |> render(:show)
  end

  # Text response
  # def show(conn, %{"messenger" => messenger}) do
  #   text(conn, "From messenger #{messenger} as a Text")
  # end

  # JSON response
  # def show(conn, %{"messenger" => messenger}) do
  #   json(conn, %{id: messenger})
  # end
end
