class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name, null: false
      t.string :avatar, null: false
      t.belongs_to :book, index: true
      t.timestamps null: false
    end
  end
end
