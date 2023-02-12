class CreateFilmes < ActiveRecord::Migration[7.0]
  def change
    create_table :filmes do |t|
      t.string :titulo
      t.date :data_de_lancamento

      t.timestamps
    end
  end
end
