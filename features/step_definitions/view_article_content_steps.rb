Given(/^there is an article titled with "(.*?)" and content with "(.*?)" and I am on article page$/) do |title, content|
  @article = Article.create!({ :title => title, :content =>
                      content, :post_time => Time.now })
  visit(articles_path @article)
end

When(/^I click "(.*?)"$/) do |title|
  click_on title
end

Then(/^I can see content of the article$/) do
  visit("#1")
end