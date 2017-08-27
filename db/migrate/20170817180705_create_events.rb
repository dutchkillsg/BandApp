class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.date :date
      t.boolean :alcohol_served
      t.string :image
      t.belongs_to :venue, show:true
      t.belongs_to :band, show:true
      t.timestamps
    end
  end
end
