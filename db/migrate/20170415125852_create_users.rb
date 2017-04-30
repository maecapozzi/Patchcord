class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :password
      t.string :city
      t.string :role
      t.string :image
      t.string :video
      t.string :summary

      t.timestamps null: false
    end
  end
end
