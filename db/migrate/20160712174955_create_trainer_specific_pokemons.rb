class CreateTrainerSpecificPokemons < ActiveRecord::Migration[5.0]
  def change
    create_table :trainer_specific_pokemons do |t|
      t.integer :pokedex_id
      t.integer :pokemon_id
      t.integer :level
    end
  end
end
