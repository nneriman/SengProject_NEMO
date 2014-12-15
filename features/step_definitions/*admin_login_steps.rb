#Given /^I am on the home page$/ do
#visit 'adminhome'
#end
#Given /^I am logged in as an admin$/ do
#  user = Factory.create(:admin) # I'll get to this later (factory_girl)
#  visit(login_url)
#  fill_in('Email', :with => user.email)
#  fill_in('Password', :with => user.password)
#  click('Login')
#end

#Then /^I should see an error for "([^"]*)"$/ do |text|
#  Then "I should see "#{text}" within ".error""
#end

Given(/^I am on the login page$/) do
  visit 'author_sessions/new'
end

When(/^I write email "(.*?)" and password "(.*?)"$/) do |arg1, arg2|

end

And(/^I should click button$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should be on the admin panel page$/) do
  pending # express the regexp above with the code you wish you had
end

