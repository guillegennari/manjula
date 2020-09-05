class CreateBreastFeedings < ActiveRecord::Migration[5.2]
  def change
    create_table :breast_feedings do |t|
      t.float :quantity
      t.float :duration
      t.references :baby, foreign_key: true

      t.timestamps
    end
  end
end
