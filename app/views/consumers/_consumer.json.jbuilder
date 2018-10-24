json.extract! consumer, :id, :user_id, :nombre, :correo, :telefono, :clave, :direccion, :created_at, :updated_at
json.url consumer_url(consumer, format: :json)
