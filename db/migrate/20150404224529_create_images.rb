class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.references :resource, polymorphic: true, index: true
      t.string :caption
      t.string :path

      t.timestamps null: false
    end
  end
end
