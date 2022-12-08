defmodule NachhilfeWeb.DistanceView do
  use NachhilfeWeb, :view
  def render("index.json", _data) do
    %{status: "ok", distance: 35.6}
  end
end
