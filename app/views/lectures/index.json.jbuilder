json.array!(@lectures) do |lecture|
  json.extract! lecture, :id, :course_id, :user_id, :content, :attach
  json.url lecture_url(lecture, format: :json)
end
