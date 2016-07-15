class CreateTradeRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :trade_requests do |t|
      t.integer :sender_id
      t.integer :recipient_id
    end
  end
end
