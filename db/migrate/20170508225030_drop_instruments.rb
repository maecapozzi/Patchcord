class DropInstruments < ActiveRecord::Migration[5.0]
  def change
    drop_table :instruments do |t|
      t.string :name

      t.timestamps
    end
  end
end
