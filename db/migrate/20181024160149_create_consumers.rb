class CreateConsumers < ActiveRecord::Migration[5.1]
  def change
    create_table :consumers do |t|
      t.references :user, foreign_key: true
      t.string :nombre
      t.string :correo
      t.string :telefono
      t.string :clave
      t.text :direccion

      t.timestamps
    end
  end
end
