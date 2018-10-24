class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      t.references :user, foreign_key: true
      t.references :contamination_level, foreign_key: true
      t.references :report_type, foreign_key: true
      t.string :ubicacion_lat
      t.string :ubicacion_long
      t.text :imagen
      t.string :observacion

      t.timestamps
    end
  end
end
