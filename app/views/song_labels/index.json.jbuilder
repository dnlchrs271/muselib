json.array!(@song_labels) do |song_label|
  json.extract! song_label, :id, :title
  json.url song_label_url(song_label, format: :json)
end
