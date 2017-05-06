class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :titre
      t.text :commentaire
      t.timestamps null: false
    end
  end
end
