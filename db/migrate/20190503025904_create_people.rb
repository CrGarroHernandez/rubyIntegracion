class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.integer :rut
      t.string :nombre
      t.string :ap_paterno
      t.string :ap_materno
      t.date :fecha

      t.timestamps
    end
  end
end
