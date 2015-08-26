json.array!(@instructors) do |instructor|
  json.extract! instructor, :id, :documento_id, :numdocumento, :nombre, :apellidos, :email, :modulo_id
  json.url instructor_url(instructor, format: :json)
end
