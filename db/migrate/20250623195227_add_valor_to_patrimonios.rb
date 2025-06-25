class AddValorToPatrimonios < ActiveRecord::Migration[7.2]
  def change
    add_column :patrimonios, :valor, :decimal, precision: 10, scale: 2
  end
end
