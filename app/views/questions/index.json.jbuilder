json.array!(@questions) do |question|
  json.extract! question, :description, :type, :ranking, :image, :teacher_id, :discipline_id
  json.url question_url(question, format: :json)
end
