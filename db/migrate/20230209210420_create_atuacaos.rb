class CreateAtuacaos < ActiveRecord::Migration[7.0]
  def change
    create_table :atuacaos do |t|
      t.integer :ator_id
      t.integer :filme_id
      t.string :nome_do_personagem

      t.timestamps
    end

    add_foreign_key :atuacaos, :ators, validate: false
    add_foreign_key :atuacaos, :filmes, validate: false
  end
end
