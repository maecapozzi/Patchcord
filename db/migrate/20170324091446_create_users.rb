class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username 
      t.string :password 
      t.string :user_first_name
      t.string :user_last_name
      t.integer :user_age
      t.string :user_role 
      t.string :user_city 
      t.integer :user_zip_code
      
      t.timestamps
    end
  end
end
