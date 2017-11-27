class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.string :name
      t.string :category
      t.text :description
      t.string :location
      t.string :distance
      t.string :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
