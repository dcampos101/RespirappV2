class CreateContaminationLevels < ActiveRecord::Migration[5.1]
  def change
    create_table :contamination_levels do |t|
      t.string :nombre
      t.string :descripcion
      t.string :estado

      t.timestamps
    end
  end
end
