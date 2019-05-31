class CreatePlatos < ActiveRecord::Migration[5.1]
  def change
    create_table :platos do |t|
      t.string :nombre
      t.integer :costo
      t.boolean :disponible

      t.timestamps
    end
  end
end
