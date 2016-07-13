class CreatePokemons < ActiveRecord::Migration[5.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :element_id
      t.integer :battle_power
      t.integer :starting_level
      t.integer :next_id
    end
  end
end
