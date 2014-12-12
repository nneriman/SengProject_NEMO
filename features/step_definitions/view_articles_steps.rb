And(/^there are already (\d+) articles$/) do |artc|
  artc.to_i.times do |n|
    Article.create!({ :title => "Title #{n}", :content =>
        "Content #{n}", :post_time => Time.now })
    end
end

Then(/^I can see list of (\d+) articles$/) do |artc|
  visit("/articles");
end

