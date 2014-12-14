class AuthorSessionsController < ApplicationController

  def new
  end


  def create
    if login(params[:email], params[:password])
      redirect_back_or_to(static_pages_article_list_path, notice: 'Logged in successfully.')
    else
      flash.now.alert = "Login failed."
      render action: :new
    end
  end
  
  def destroy
    logout
    redirect_to(root_path, notice: 'Logged out!')
  end
end

