class CommentsController < ApplicationController
  def create
    @commentable = find_commentable
    @comment = @commentable.comments.build(comment_params)
    if @comment.save
      redirect_to @commentable, notice: 'Added comment.'
    else
      render action: :new
    end
  end

  private

  def find_commentable
    params.each do |name, value|
      if name =~ /(.+)_id$/
        return $1.classify.constantize.find(value)
      end
    end
    nil
  end

  def comment_params
    params[:comment].permit(:body, :post_id)
  end

end
