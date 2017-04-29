class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :image
      t.string :video
      t.string :summary
      t.integer :user_id

      t.timestamps
    end
  end
end
