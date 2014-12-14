Given /^I am on the home page$/ do
  visit 'adminhome'
end

When /^I try to login with "([^"]*)" and "([^"]*)"$/ do |username, password|
  browser.textbox("user").value = username
  browser.password("password").value = password
  browser.submit("Login").click
end

Then /^I should be logged in$/ do
  if !browser.button("Logout").exists?()
    raise "Not logged in"
  end
end

Then /^I should not be logged in$/ do
  if !browser.submit("Login").exists?()
    raise "Logged in"
  end
end

Then /^I should be shown error message "([^"]*)"$/ do |msg|
  value = browser.div("errorMessage").text()
  if value != msg
    raise "Incorrect message: #{value}"
  end
end