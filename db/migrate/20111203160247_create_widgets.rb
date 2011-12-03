class CreateWidgets < ActiveRecord::Migration
  def change
    create_table :widgets do |t|
      t.string :system_name
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
