json.array!(@tests) do |test|
  json.extract! test, :name, :questions
  json.url test_url(test, format: :json)
end
