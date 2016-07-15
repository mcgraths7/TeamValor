class CreateTraders < ActiveRecord::Migration[5.0]
  def change
    create_table :traders do |t|
      t.integer :trade_request_id
    end
  end
end
