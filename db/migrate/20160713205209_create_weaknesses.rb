class CreateWeaknesses < ActiveRecord::Migration[5.0]
  def change
    create_table :weaknesses do |t|
      t.string :name
      t.integer :element_id
    end
  end
end
