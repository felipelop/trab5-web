class CreateTreinadors < ActiveRecord::Migration
  def change
    create_table :treinadors do |t|
      t.string :nome
      t.string :regiao
      t.integer :pokebolas
      t.integer :insignias

      t.timestamps
    end
  end
end
