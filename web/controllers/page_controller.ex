defmodule PcfMysql.PageController do
  use PcfMysql.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
