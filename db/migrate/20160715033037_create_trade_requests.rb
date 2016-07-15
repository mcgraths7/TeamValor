class CreateTradeRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :trade_requests do |t|
      t.integer :give_id
      t.integer :take_id
    end
  end
end
