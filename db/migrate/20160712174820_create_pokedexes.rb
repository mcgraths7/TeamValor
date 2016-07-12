class CreatePokedexes < ActiveRecord::Migration[5.0]
  def change
    create_table :pokedexes do |t|
      t.integer :user_id 
    end
  end
end
