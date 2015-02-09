json.array!(@admin_artists) do |admin_artist|
  json.extract! admin_artist, :id, :name, :sinopsis
  json.url admin_artist_url(admin_artist, format: :json)
end
