class CreatePedidos < ActiveRecord::Migration[5.1]
  def change
    create_table :pedidos do |t|
      t.integer :idUsuario
      t.integer :mesa
      t.integer :costo
      t.integer :idEstadoComanda
      t.date :fecha
      t.text :descripcion

      t.timestamps
    end
  end
end
