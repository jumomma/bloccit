class CreatePosts < ActiveRecord::Migration[5.1]
  def change #calls the 'create_table' method
    create_table :posts do |t| #create_table takes a block that specifies the table attributes
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
