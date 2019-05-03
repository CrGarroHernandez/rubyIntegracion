json.extract! person, :id, :rut, :nombre, :ap_paterno, :ap_materno, :fecha, :created_at, :updated_at
json.url person_url(person, format: :json)
