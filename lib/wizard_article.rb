require_relative 'article_helper'
require 'csv'
require 'open-uri'

class WizardArticle

  attr_reader :title, :url, :article

  def initialize(title,url,article)
    @title = title
    @url = url
    @article = article
  end

  def write_to_csv(file)
    CSV.open(file, 'a+') do |file|
      file<<[@title, @url, @article]
    end
    'success'
  end


end
