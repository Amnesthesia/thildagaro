json.array!(@pages) do |page|
  json.extract! page, :id, :title, :content, :pictures_id, :published, :layout
  json.url page_url(page, format: :json)
end
