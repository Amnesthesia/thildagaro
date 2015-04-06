class AddFrontpageToPages < ActiveRecord::Migration
  def change
    add_column :pages, :front, :boolean
  end
end
