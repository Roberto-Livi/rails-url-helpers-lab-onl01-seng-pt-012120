class AddActive < ActiveRecord::Migration
  def change
    add_column :students, :active, :boolean, :default_value => false
  end
end