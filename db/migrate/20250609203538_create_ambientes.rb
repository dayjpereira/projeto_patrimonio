class CreateAmbientes < ActiveRecord::Migration[8.0]
  def change
    create_table :ambientes do |t|
      t.string :nome
      t.string :type

      t.timestamps
    end
  end
end
