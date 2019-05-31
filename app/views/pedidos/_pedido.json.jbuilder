json.extract! pedido, :id, :idUsuario, :mesa, :costo, :idEstadoComanda, :fecha, :descripcion, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)
