class Shows < ActiveRecord::Migration[6.1]
  def change
    create_table :shows do |t|
      t.string :location
      t.string :description
      t.string :show_date
      t.integer :band_id
    end
  end
end
