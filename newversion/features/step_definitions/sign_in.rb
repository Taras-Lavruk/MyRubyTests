Given(/^I am not logged in member$/) do
  @sign_in_page= SignInPage.new
  @sign_in_page.load
end

When(/^I am on 'Sign in' page I see...$/) do
  expect(current_url).to include '/signin'
  expect(page).to have_text 'Username'
  expect(page).to have_content 'PASSWORD'
end

And(/^I fill in log in form with valid credentials$/) do
  @sign_in_page = SignInPage.new
  @sign_in_page.load
  @sign_in_page.login_username_field.set 'hlee'
  @sign_in_page.login_password_field.set 'test123456'
end

And(/^I click login button$/) do
  @sign_in_page.sign_in_button.click
end

Then(/^I am on member's page$/) do
  # @account_info_page = AccountInfoPage.new
  # @account_info_page
  expect(page).to have_content 'Good '
end

Given(/^I am logged in as a "([^"]*)"$/) do |user_name|
  login user_name, 'test123456'
end