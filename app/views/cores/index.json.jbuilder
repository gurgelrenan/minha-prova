json.array!(@cores) do |core|
  json.extract! core, :name, :course_id
  json.url core_url(core, format: :json)
end
