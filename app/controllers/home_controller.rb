class HomeController < ApplicationController
  def index
    @project_category = Category.find_by_name("Projects")
    @article_category = Category.find_by_name("Articles")

    @projects = Article.where(:category_id => @project_category.id).order(:priority)
    @articles = Article.where(:category_id => @article_category.id).order(:priority)
  end
end
