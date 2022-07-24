Given(/^I am not logged in visitor$/) do
  visit 'https://member.whoami-integration.integration.teladoc.io/registrations/get_started'
end

When(/^I click sign_in link$/) do
  find(:xpath, "//a[contains(text(),'sign in')]").click
end

Then(/^I see the log in form is opened$/) do
  expect(current_url).to include '/signin'
  expect(page).to have_content 'Username'
  expect(page).to have_content 'PASSWORD'
end

When(/^I fill in log in form with valid credentials$/) do
  find('#login_username').set 'second'
  find('#login_password').set 'test123456'
end

When(/^I click login button$/) do
find(:xpath, "/html[1]/body[1]/div[1]/main[1]/div[1]/section[1]/div[2]/div[1]/form[1]/ul[1]/li[3]/input[1]").click
end

Then(/^I logged as a user$/) do
  expect(page).to have_content 'Good '
end