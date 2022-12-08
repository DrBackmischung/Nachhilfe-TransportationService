defmodule NachhilfeWeb.DistanceController do
  use NachhilfeWeb, :controller
  require Logger

  def index(conn, %{"from" => from, "to" => to}) do
    render(conn, "index.json", from: from, to: to)
  end
end
