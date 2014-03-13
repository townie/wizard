require_relative 'article_helper'

class ArticleSelector

  def initialize(list_of_articles)
    @articles = list_of_articles
  end

  def get_post_by_url(find_this_url)
    @articles.select do |art|
      return art  if art.url == find_this_url
    end
  end

end
