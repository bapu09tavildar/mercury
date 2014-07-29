class CreateArticals < ActiveRecord::Migration
  def change
    create_table :articals do |t|
      t.string :title
      t.text :content
      t.string :auth_name
      t.string :publication_name
      t.timestamps
    end
  end
end
