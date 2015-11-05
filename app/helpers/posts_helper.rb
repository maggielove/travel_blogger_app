module PostsHelper

  def post_params
    params.require("/users/#{@user.id}/posts/new").permit(:title, :body)
  end

end
