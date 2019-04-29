json.extract! producto, :id, :nombre, :descripcion, :fecha_elaboracion, :fecha_vencimiento, :stock, :categoria_id, :marca_id, :created_at, :updated_at
json.url producto_url(producto, format: :json)
