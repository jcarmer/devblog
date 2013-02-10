class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.integer :image_id

      t.text :content

      t.integer :category_id
      t.integer :priority

      t.timestamps
    end
  end
end
