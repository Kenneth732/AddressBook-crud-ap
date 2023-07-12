class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :firstname
      t.string :lastname
      t.string :phonenumber
      t.string :emailaddress
      t.string :image

      t.timestamps
    end
  end
end
