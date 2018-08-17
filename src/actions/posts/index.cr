class Posts::Index < BrowserAction
  route do
    render IndexPage, posts: PostQuery.new
  end
end
