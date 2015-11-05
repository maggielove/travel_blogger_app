module PostsHelper

  def post_params
    params.require("/users/1/posts/new").permit(:title, :body)
  end

end
