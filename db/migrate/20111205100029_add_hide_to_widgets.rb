class AddHideToWidgets < ActiveRecord::Migration
  def change
    add_column :widgets, :hide, :boolean
  end
end
