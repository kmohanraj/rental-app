defmodule RentalAppWeb.PageController do
  use RentalAppWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
