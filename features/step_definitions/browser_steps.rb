#require '../support/capydriver'


Given /^opened "(.*)" page$/ do |url|
  visit url
end

When /^I click "(.*)" link$/ do |link|
  click_link link
end

Then /^I should see (Sign in) page$/ do |signin_page|
  page.should have_content(signin_page)
end

When /^I login$/ do
  fill_in 'Username', :with => 'unl'
  fill_in 'Password', :with => 'test1234'
  click_button('Sign in')
end


Then /^I should see the current date$/ do
  page.should have_content(Date.today)
end


When /I select "(.*)" option/ do |option|
   choose option
end


