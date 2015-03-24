class BlogPostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :published_date
  url :blog_post
end
