class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.references :course, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.string :content
      t.string :attach

      t.timestamps null: false
    end
  end
end
