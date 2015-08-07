json.array!(@embeds) do |embed|
  json.extract! embed, :id, :title, :app_id, :webform_id, :environment
  json.url embed_url(embed, format: :json)
end
