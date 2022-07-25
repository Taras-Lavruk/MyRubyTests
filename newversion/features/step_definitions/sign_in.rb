Given(/^I am not logged in visitor$/) do
  @get_started_page = GetStartedPage.new
  @get_started_page.load
end

When(/^I click sign_in link$/) do
  @get_started_page.sign_in_link.click
end

Then(/^I see the log in form is opened$/) do
  expect(current_url).to include '/signin'
  expect(page).to have_content 'Username'
  expect(page).to have_content 'PASSWORD'
end

When(/^I fill in log in form with valid credentials$/) do
  @sign_in_page = SignInPage.new
  @sign_in_page.load
  @sign_in_page.login_username_field.set 'second'
  @sign_in_page.login_password_field.set 'test123456'
end

When(/^I click login button$/) do
@sign_in_page.sign_in_button.click
end

Then(/^I logged as a user$/) do
  expect(page).to have_content 'Good '
  sleep 15
end