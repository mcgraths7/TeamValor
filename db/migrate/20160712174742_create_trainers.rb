class CreateTrainers < ActiveRecord::Migration[5.0]
  def change
    create_table :trainers do |t|
      t.integer :user_id
      t.integer :rank, default: 1
    end
  end
end
