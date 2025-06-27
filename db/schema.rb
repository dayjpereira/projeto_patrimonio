# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2025_06_23_195227) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ambientes", force: :cascade do |t|
    t.string "nome"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "funcionarios", force: :cascade do |t|
    t.string "nome"
    t.bigint "ambiente_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ambiente_id"], name: "index_funcionarios_on_ambiente_id"
  end

  create_table "movimentacao_patrimonios", force: :cascade do |t|
    t.bigint "patrimonio_id", null: false
    t.bigint "origem_id"
    t.bigint "destino_id"
    t.date "data_movimentacao"
    t.bigint "funcionario_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["destino_id"], name: "index_movimentacao_patrimonios_on_destino_id"
    t.index ["funcionario_id"], name: "index_movimentacao_patrimonios_on_funcionario_id"
    t.index ["origem_id"], name: "index_movimentacao_patrimonios_on_origem_id"
    t.index ["patrimonio_id"], name: "index_movimentacao_patrimonios_on_patrimonio_id"
  end

  create_table "patrimonios", force: :cascade do |t|
    t.string "nome"
    t.string "descricao"
    t.string "placa"
    t.date "data_aquisicao"
    t.bigint "ambiente_id", null: false
    t.bigint "funcionario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "valor", precision: 10, scale: 2
    t.index ["ambiente_id"], name: "index_patrimonios_on_ambiente_id"
    t.index ["funcionario_id"], name: "index_patrimonios_on_funcionario_id"
  end

  add_foreign_key "funcionarios", "ambientes"
  add_foreign_key "movimentacao_patrimonios", "ambientes", column: "destino_id"
  add_foreign_key "movimentacao_patrimonios", "ambientes", column: "origem_id"
  add_foreign_key "movimentacao_patrimonios", "funcionarios"
  add_foreign_key "movimentacao_patrimonios", "patrimonios"
  add_foreign_key "patrimonios", "ambientes"
  add_foreign_key "patrimonios", "funcionarios"
end
