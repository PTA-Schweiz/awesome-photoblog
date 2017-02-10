class CreatePhotoPosts < ActiveRecord::Migration[5.0]
  def change
    create_table :photo_posts do |t|
      t.string :name
      t.text :description
      t.string :photo
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
