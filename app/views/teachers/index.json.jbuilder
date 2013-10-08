json.array!(@teachers) do |teacher|
  json.extract! teacher, :name, :user_id
  json.url teacher_url(teacher, format: :json)
end
