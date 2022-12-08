defmodule NachhilfeWeb.DistanceView do
  use NachhilfeWeb, :view
  def render("index.json", %{from: start, to: destination}) do
    {:ok, result} = GoogleMaps.distance(start, destination)
    match?(%{
      "destination_addresses" => _,
      "origin_addresses" => _,
      "rows" => [
        %{"elements" => [%{"distance" => %{"text" => _, "value" => d}}]}
      ]
    }, result)
    result
  end
  def render("error.json", _) do
    "Wrong parameters"
  end
end
