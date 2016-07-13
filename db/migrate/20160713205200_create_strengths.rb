class CreateStrengths < ActiveRecord::Migration[5.0]
  def change
    create_table :strengths do |t|
      t.string :name
      t.integer :element_id

    end
  end
end
