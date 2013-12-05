json.array!(@disciplines) do |discipline|
  json.extract! discipline, :name, :description, :college_id, :teacher_id, :course_id
  json.url discipline_url(discipline, format: :json)
end
