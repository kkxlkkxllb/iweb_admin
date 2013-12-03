json.array!(@manuals) do |manual|
  json.extract! manual, :name
  json.url manual_url(manual, format: :json)
end
