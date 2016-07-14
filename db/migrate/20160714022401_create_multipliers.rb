class CreateMultipliers < ActiveRecord::Migration[5.0]
  def change
    create_table :multipliers do |t|
      t.integer :friend_element_id
      t.integer :foe_element_id
      t.float :amount
    end
  end
end
