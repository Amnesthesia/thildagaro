class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :subtitle
      t.text :content
      t.references :pictures, index: true, foreign_key: true
      t.string :client
      t.string :client_url
      t.date :completion_date
      t.boolean :published

      t.timestamps null: false
    end
  end
end
