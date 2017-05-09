class DropLinks < ActiveRecord::Migration[5.0]
  def change
    drop_table :links do |t|
      t.timestamps
    end
  end
end
