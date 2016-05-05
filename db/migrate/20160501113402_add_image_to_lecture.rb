class AddImageToLecture < ActiveRecord::Migration
  def change
    add_column :lectures, :image, :string
  end
end
