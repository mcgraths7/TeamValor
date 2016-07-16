class CreateEvolvers < ActiveRecord::Migration[5.0]
  def change
    create_table :evolvers do |t|
      t.integer :user_pokemon_id
    end
  end
end
