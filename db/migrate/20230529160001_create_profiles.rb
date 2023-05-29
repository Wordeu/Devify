class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.text :bio
      t.string :category
      t.integer :day_rate
      t.integer :rating

      t.timestamps
    end
  end
end
