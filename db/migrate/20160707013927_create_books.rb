class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name, null: false
      t.string :avatar, null: false
      t.text :summary
      t.timestamps null: false
    end
  end
end
