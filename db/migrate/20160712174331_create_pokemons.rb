class CreatePokemons < ActiveRecord::Migration[5.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :element
      t.integer :rarity
      t.integer :evolution_state
      t.integer :number_of_evolutions
      t.integer :starting_level
    end
  end
end
