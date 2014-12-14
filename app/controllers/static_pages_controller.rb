class StaticPagesController < ApplicationController
  def resume
  end

  def contact
  end

  def buy
  end

  def adminhome
    @categories = Category.all
    @articles = Article.all
    @videos = Video.all
    @photos = Photo.all

  end

  def photo_list
    @categories = Category.all
    @photos = Photo.all
  end

  def article_list
    @articles = Article.all
  end

end
