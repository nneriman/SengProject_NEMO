#require 'spec/spec_helper'

And(/^there are already (\d+) categorized photos$/) do |category|
  category.to_i.times do |n|
    Category.create!({ :title => "Title #{n}", :created_at => Time.now, :updated_at => Time.now})
    end
end

Then(/^I can see all categorized (\d+) photos$/) do |category|
  visit("/categories");
end