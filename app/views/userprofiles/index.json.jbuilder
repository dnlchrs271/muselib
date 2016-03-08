json.array!(@userprofiles) do |userprofile|
  json.extract! userprofile, :id, :recentlyplayedartists, :string, :followers, :int, :playlists, :following, :int, :name, :follow
  json.url userprofile_url(userprofile, format: :json)
end
