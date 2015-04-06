class CreateCommentsPosts < ActiveRecord::Migration
  def change
    create_table :comments_posts, :id => false do |t|
      t.references :comment, :post
    end

    add_index :comments_posts, [:comment_id, :post_id],
      name: "comments_posts_index",
      unique: true
  end
end
