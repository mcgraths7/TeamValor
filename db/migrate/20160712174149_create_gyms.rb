class CreateGyms < ActiveRecord::Migration[5.0]
  def change
    create_table :gyms do |t|
      t.string :name
      t.integer :leader_id
      t.string :location
    end
  end
end
