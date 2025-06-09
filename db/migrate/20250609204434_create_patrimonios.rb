class CreatePatrimonios < ActiveRecord::Migration[8.0]
  def change
    create_table :patrimonios do |t|
      t.string :nome
      t.string :descricao
      t.string :placa
      t.date :data_aquisicao
      t.references :ambiente, null: false, foreign_key: true
      t.references :funcionario, null: false, foreign_key: true

      t.timestamps
    end
  end
end
