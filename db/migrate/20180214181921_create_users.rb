class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :role
      t.string :skills
      t.string :portfolio
      t.string :linkedin
      t.string :email
      t.string :photo

      t.timestamps
    end
  end
end
