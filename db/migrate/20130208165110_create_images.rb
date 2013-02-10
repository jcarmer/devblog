class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.attachment :media
      t.string :alt_text

      t.timestamps
    end
  end
end
