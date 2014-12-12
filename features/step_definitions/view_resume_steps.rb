When(/^I click "(.*?)" link$/) do |link|
  click_on link
end

Then(/^I can see resume of the web site owner$/) do
  visit("static_pages/resume")
end