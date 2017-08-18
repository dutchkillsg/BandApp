class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.text :date
      t.boolean :alcohol_served

      t.timestamps
    end
  end
end
