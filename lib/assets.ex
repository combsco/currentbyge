defmodule CurrentByGE.Assets do
  import CurrentByGE
  alias CurrentByGE.Client

  def findById(asset_id, client \\ %Client{}) do
    # CurrentByGE.get("assets" <> asset_id).body
    get "assets/#{asset_id}", client
  end
end
