json.array!(@playlists) do |playlist|
  json.extract! playlist, :id, :title, :artistname, :string, :shuffleplay, :string
  json.url playlist_url(playlist, format: :json)
end
