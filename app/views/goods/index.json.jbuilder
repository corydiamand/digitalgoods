json.array!(@goods) do |good|
  json.extract! good, :id, :name, :type, :user_id, :parent_app_id, :app_instance_id
  json.url good_url(good, format: :json)
end
