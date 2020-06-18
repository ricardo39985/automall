class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.integer :year
      t.string :make
      t.string :model
      t.integer :miles
      t.string :features
      t.string :color

      t.timestamps
    end
  end
end
