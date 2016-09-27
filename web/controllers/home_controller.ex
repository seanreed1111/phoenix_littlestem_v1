defmodule PhoenixLittlestemV1.HomeController do
  use PhoenixLittlestemV1.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
