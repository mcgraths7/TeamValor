class CreateTrainerSpecificPokemons < ActiveRecord::Migration[5.0]
  def change
    create_table :trainer_specific_pokemons do |t|
      t.integer :pokedex_id
      t.integer :pokemon_id
      t.integer :level
      t.string  :name
      t.string  :element
      t.integer :rarity
      t.integer :evolution_state
      t.integer :number_of_evolutions
      t.string  :base
      t.string  :mid
      t.string  :top
      t.string  :unique
    end
  end
end
