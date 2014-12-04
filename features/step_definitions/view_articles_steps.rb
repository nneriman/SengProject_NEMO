Given(/^I am on any page$/) do
  visit("/articles");
#  pending # express the regexp above with the code you wish you had
end

And(/^there are already (\d+) articles$/) do |artc|
  artc.to_i.times do |n|
    Article.create!({ :title => "Title #{n}", :content =>
        "Content #{n}", :post_time => Time.now })
    end
#  pending # express the regexp above with the code you wish you had
end

Then(/^I can see list of (\d+) articles$/) do |artc|
#  pending # express the regexp above with the code you wish you had
  visit("/articles");
end