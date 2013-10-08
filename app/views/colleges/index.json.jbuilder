json.array!(@colleges) do |college|
  json.extract! college, :name, :city, :state
  json.url college_url(college, format: :json)
end
