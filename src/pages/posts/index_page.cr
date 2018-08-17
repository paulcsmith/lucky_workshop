class Posts::IndexPage < MainLayout
  needs posts : PostQuery

  def content
    h1 "Posts"
    render_posts
  end

  private def render_posts
    ul do
      @posts.each do |post|
        li post.title
      end
    end
  end
end
