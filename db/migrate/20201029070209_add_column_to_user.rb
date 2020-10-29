class AddColumnToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :nickname, :string, null: false, default: '', limit: 100
    add_column :users, :full_name, :string, null: false
    add_column :users, :full_name_kana, :string, null: false
    add_column :users, :birth_day, :date, null: false
    add_column :users, :self_introduction, :string, limit: 500
    add_column :users, :sex, :integer, null: false, default: 0
    add_column :users, :img_name, :string, null: false
    add_column :users, :team_id, :integer, null: false
  end
end
