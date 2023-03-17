defmodule LearnPhoenixWeb.PageController do
  use LearnPhoenixWeb, :controller
  plug :put_view, html: LearnPhoenixWeb.PageHTML, json: LearnPhoenixWeb.PageJSON

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def index(conn, _params) do
    redirect(conn, to: ~p"/redirect_test")
  end

  def redirect_test(conn, _params) do
    render(conn, :index)
  end
end
