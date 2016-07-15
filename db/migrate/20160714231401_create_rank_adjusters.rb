class CreateRankAdjusters < ActiveRecord::Migration[5.0]
  def change
    create_table :rank_adjusters do |t|
      t.integer :friend_id
      t.integer :foe_id
    end
  end
end
