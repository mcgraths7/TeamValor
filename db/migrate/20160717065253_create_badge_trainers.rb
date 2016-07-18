class CreateBadgeTrainers < ActiveRecord::Migration[5.0]
  def change
    create_table :badge_trainers do |t|
      t.integer :badge_id
      t.integer :trainer_id

      t.timestamps
    end
  end
end
