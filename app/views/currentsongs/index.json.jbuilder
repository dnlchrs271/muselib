json.array!(@currentsongs) do |currentsong|
  json.extract! currentsong, :id, :title, :albumcover, :string, :songlength, :float, :shuffleplay, :string, :previousong, :string, :forwardsong, :repeat
  json.url currentsong_url(currentsong, format: :json)
end
