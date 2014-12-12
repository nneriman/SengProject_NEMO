Given(/^there is a category titled with "(.*?)" and I am on the categories page$/) do |title|
  @category = Category.create!({ :title => title, :created_at => Time.now, :updated_at => Time.now})
  visit(categories_path @category)
end

And(/^there are already (\d+) photos$/) do |pht|
  pht.to_i.times do |n|
    Photo.create!({ :title => "Title #{n}",  :post_time => Time.now, :description =>
                      "Description #{n}", :created_at => Time.now, :updated_at => Time.now, :category_id => n})
  end
end

When(/^I click on "(.*?)" link$/) do |title|
  click_on title
end

Then(/^I can see all (\d+) photos$/) do |pht|
  visit("#1")
end