json.extract! report, :id, :user_id, :contamination_level_id, :report_type_id, :ubicacion_lat, :ubicacion_long, :imagen, :observacion, :created_at, :updated_at
json.url report_url(report, format: :json)
