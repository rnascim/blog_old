class CommentsController < ApplicationController
  # before_filter :authenticate, :except => [:index, :show]

  def create
    @post = Post.find(params[:post_id])
    # @comment = @post.comments.create!(params[:comment])
    comment = @post.comments.new(params[:comment])
    # redirect_to @post
    respond_to do |format|
      if comment.save
        flash[:notice] = 'Post was successfully created.'
        format.html { redirect_to @post }        
      else
        flash[:notice] = 'Campos do comentário não foram corretamente preenchidos'
        format.html { redirect_to @post }   
      end
    end
  end
end
