class CreateEcopoints < ActiveRecord::Migration[6.0]
  def change
    create_table :ecopoints do |t|
      t.string :name
      t.references :category, null: false, foreign_key: true
      t.references :address, null: false, foreign_key: true

      t.timestamps
    end
  end
end
