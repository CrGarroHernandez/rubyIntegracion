class CreateProductos < ActiveRecord::Migration[5.1]
  def change
    create_table :productos do |t|
      t.string :nombre
      t.string :descripcion
      t.datetime :fecha_elaboracion
      t.datetime :fecha_vencimiento
      t.integer :stock
      t.references :categoria, foreign_key: true
      t.references :marca, foreign_key: true

      t.timestamps
    end
  end
end
