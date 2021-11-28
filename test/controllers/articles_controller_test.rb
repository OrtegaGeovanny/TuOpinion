require "test_helper"

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  def new
    @article = Article.new
  end
  def create
  end
end
