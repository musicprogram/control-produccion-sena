json.array!(@tinstructors) do |tinstructor|
  json.extract! tinstructor, :id, :pturno_id, :instructor_id
  json.url tinstructor_url(tinstructor, format: :json)
end
