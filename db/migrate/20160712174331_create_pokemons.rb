class CreatePokemons < ActiveRecord::Migration[5.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :element
      t.integer :rarity
      t.integer :evolution_state
      t.integer :number_of_evolutions
      t.string :base
      t.string :mid
      t.string :top
      t.string :unique
      t.integer :starting_level
    end
  end
end
