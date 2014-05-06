json.array!(@parent_apps) do |parent_app|
  json.extract! parent_app, :id, :name
  json.url parent_app_url(parent_app, format: :json)
end
