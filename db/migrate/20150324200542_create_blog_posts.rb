class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
      t.string :title
      t.text :body
      t.datetime :published_date

      t.timestamps null: false
    end
  end
end
