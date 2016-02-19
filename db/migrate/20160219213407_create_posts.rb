class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :content
      t.belongs_to :category, index: true
      t.integer :status, limit: 1
      t.integer :author
      t.integer :edit_by

      t.timestamps null: false
    end
  end
end
