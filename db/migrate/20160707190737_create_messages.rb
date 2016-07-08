class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :name, null: false
      t.string :contact, null: false
      t.text :body, null: false
      t.timestamps null: false
    end
  end
end
