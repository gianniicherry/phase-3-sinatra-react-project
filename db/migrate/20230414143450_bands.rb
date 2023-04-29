class Bands < ActiveRecord::Migration[6.1]
  def change
    create_table :bands do |t|
      t.string :name
      t.string :description
      t.string :genre  
    end  
  end
end
