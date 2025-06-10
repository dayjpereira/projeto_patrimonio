class ChangeFuncionarioNullableInPatrimonios < ActiveRecord::Migration[7.2]
  def change
    change_column_null :patrimonios, :funcionario_id, true
  end
end
