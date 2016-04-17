class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :title_number, null: false
      t.string :title_unit
      t.string :subtitle
      t.datetime :date_published, null: false
      t.text :article, null: false
      t.string :source
      t.integer :views
      t.timestamps null: false
    end
  end
end
