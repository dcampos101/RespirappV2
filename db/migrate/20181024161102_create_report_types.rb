class CreateReportTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :report_types do |t|
      t.string :nombre
      t.string :estado

      t.timestamps
    end
  end
end
