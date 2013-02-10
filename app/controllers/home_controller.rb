class HomeController < ApplicationController
  def index
    @project_category = Category.find_by_name("Projects")
    @article_category = Category.find_by_name("Articles")

    @projects = Article.find_all_by_category_id(@project_category.id)
    @articles = Article.find_all_by_category_id(@article_category.id)
  end
end
