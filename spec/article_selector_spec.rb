require 'rspec'
require_relative 'spec_helper'

describe ArticleSelector do

  it 'should show the correct article that is called by URL selector' do

    expect(ArticleSelector.new( [WizardArticle.new('snazzy','db','doing it big style' ),WizardArticle.new('you','know','whats up')]).get_post_by_url('know').class).to eq(WizardArticle.new('you','know','whats up').class)

  end

end
