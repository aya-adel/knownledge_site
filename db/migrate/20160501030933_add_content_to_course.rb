class AddContentToCourse < ActiveRecord::Migration
  def change
    add_column :courses, :content, :string
  end
end
