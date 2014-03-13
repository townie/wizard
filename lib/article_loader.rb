require_relative 'article_helper'
require 'csv'

class ArticleLoader

  attr_reader :posts_array

  def initialize(filename = 'wizPosts.csv')
    @posts_array= []
    @filename = filename
  end

  def build
    CSV.foreach(@filename, 'r') do |row|
      @posts_array << WizardArticle.new(row[0], row[1], row[2])
    end
    @posts_array
  end

end
