defmodule NachhilfeWeb.DistanceController do
  use NachhilfeWeb, :controller

  def index(conn, _params) do
    render(conn, "index.json")
  end
end
