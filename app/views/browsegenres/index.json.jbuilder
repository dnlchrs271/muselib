json.array!(@browsegenres) do |browsegenre|
  json.extract! browsegenre, :id, :newreleases, :string, :category, :string, :search, :string
  json.url browsegenre_url(browsegenre, format: :json)
end
