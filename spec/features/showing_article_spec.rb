require 'rails_helper'

RSpec.feature 'Showing an Article' do
  before do
    @article = Article.create(title: 'first article', body: 'body first article')
  end
  
  scenario 'display individual article' do
    visit '/'
    
    click_link @article.title
    
    expect(page).to have_content(@article.title)
    expect(page).to have_content(@article.body)
    expect(current_path).to eq(article_path(@article))
  end
end