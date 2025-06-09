class CreateMovimentacaoPatrimonios < ActiveRecord::Migration[8.0]
  def change
    create_table :movimentacao_patrimonios do |t|
      t.references :patrimonio, null: false, foreign_key: true
      t.references :origem, foreign_key: { to_table: :ambientes }
      t.references :destino, foreign_key: { to_table: :ambientes }
      t.date :data_movimentacao
      t.references :funcionario, null: false, foreign_key: true

      t.timestamps
    end
  end
end


