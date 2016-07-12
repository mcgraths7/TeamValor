class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :password_digest
      t.string :catchphrase
      t.integer :gym_id
      t.integer :rank, :default => 1
    end
  end
end
