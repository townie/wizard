require 'rspec'
require_relative 'spec_helper'

describe WizardArticle do

  it 'has title, url and article' do
      expect(WizardArticle.new('woot','url','article stuff').class).to eq(WizardArticle)
  end

  it 'has acess to title' do
    expect(WizardArticle.new('woot','url','article stuff').title).to eq('woot')
  end

  it 'has access to url' do
    expect(WizardArticle.new('woot','url','article stuff').url).to eq('url')
  end

  it 'has access to article' do
    expect(WizardArticle.new('woot','url','article stuff').article).to eq('article stuff')
  end

  it 'has a way to write to a CSV passed to it' do
    expect(WizardArticle.new('woot','url','article stuff').write_to_csv("wizPosts.csv")).to eq('success')
  end


end
