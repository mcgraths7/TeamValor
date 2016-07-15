class CreateUserPokemons < ActiveRecord::Migration[5.0]
  def change
    create_table :user_pokemons do |t|
      t.string :nickname
      t.integer :user_id
      t.integer :pokemon_id
      t.integer :level
      t.string  :element
    end
  end
end
