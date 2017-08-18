class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.text :date
      t.boolean :alcohol_served
      t.string :image
      t.integer :venue_id
      t.integer :band_id
      t.timestamps
    end
  end
end
