defmodule UeberauthHerokuExample.PageController do
  use UeberauthHerokuExample.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
