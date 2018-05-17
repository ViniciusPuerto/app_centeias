class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :nome
      t.string :registro
      t.string :cargo
      t.string :email
      t.integer :pin
      t.string :status
      
      
      
      t.timestamps
    end
  end
end
