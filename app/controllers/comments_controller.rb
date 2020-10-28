class CommentsController < ApplicationController
  before_action :set_account
  before_action :set_comment, except: [:create]

  def create
    @comment = @account.comments.create(comment_params)
    redirect_to @account
  end

  def destroy

    @comment.destroy
    redirect_to @account
  end


private

  def set_account
    @account = Account.find(params[:account_id])
  end

  def set_comment
  @comment = @account.comments.find(params[:id])
  end

  def comment_params
    params[:comment].permit(:name, :content)
  end

end
