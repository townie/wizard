require 'rspec'
require_relative 'spec_helper'

describe ArticleLoader do

  #after-each <- clean up any files
  it 'can asccess the array of article objects' do
    expect(ArticleLoader.new('testPost.csv').posts.length).to eq(1)
  end

  it 'pulls up all from the filename on initialize' do

    expect(ArticleLoader.new('testPost.csv').class).to eq(ArticleLoader)

  end

  it 'pulls articles from a default csv if no name was passed' do
    expect(ArticleLoader.new.class).to eq( ArticleLoader)
  end

  # it 'it can retrieve one article from the CSV' do
  #   expect((ArticleLoader.new.get_post_by_url('goodlaughs')).article).to eq('HE TAKES BITE')
  # end

end
