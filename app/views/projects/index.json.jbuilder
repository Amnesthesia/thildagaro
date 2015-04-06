json.array!(@projects) do |project|
  json.extract! project, :id, :title, :subtitle, :content, :pictures_id, :client, :client_url, :completion_date, :published
  json.url project_url(project, format: :json)
end
