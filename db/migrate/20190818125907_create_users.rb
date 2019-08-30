class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :age
      t.string :country
      t.integer :sex
      t.string :avatar
      t.text :introduction
      t.integer :status, null: false, default: 0
      t.timestamps
    end
  end
end
