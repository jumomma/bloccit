class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :body
# #3 the index on the reference line tells db to index
#    the post_id colum so it can be searched.
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
