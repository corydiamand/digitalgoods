json.array!(@app_instances) do |app_instance|
  json.extract! app_instance, :id, :parent_app_id, :unique_identifier, :user_id
  json.url app_instance_url(app_instance, format: :json)
end
