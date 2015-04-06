class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.text :content
      t.references :pictures, index: true, foreign_key: true
      t.boolean :published
      t.integer :layout

      t.timestamps null: false
    end
  end
end
