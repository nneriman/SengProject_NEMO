Given /^admin is logged in$/ do
  visit '/author_sessions/new'
end
Given(/^I am on article upload page$/) do
  visit '/article/new'
end
When(/^I upload a valid article with title "(.*?)"$/) do |title|
  fill_in 'Title', with:title
  attach_file 'Article', File.join(Rails.root, 'features', 'adding_article', 'ok.doc')
  click_button "Create Article"
end
Then(/^I should see "(.*?)"$/) do
  current_path.should == '/static_pages/adminhome'
end
And(/^I should see "(.*?)"$/) do |arg1|
  visit 'static_pages/adminhome'
end

