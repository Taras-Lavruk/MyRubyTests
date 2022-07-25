Given(/^I am on the landing page$/) do
  @sign_in_page = SignInPage.new
  @sign_in_page.load
end

When(/^I click the 'Get Started' button$/) do
  # find(:xpath, "//a[contains(text(),'Get Started')]").click
  @sign_in_page.get_started_button.click
end

And(/^I fill in registration form$/) do
  @get_started_page = GetStartedPage.new
  @get_started_page.load
  @get_started_page.first_name_field.set 'Jane'
  @get_started_page.last_name_field.set 'Smith'
  @get_started_page.month_field.set '01'
  @get_started_page.day_field.set '01'
  @get_started_page.year_field.set '2000'
  @get_started_page.postal_field.set '06901'
  @get_started_page.email_address_field.set 'open1234@mail.com'
  @get_started_page.language_field.select 'Arabic'
  @get_started_page.gender_field.select 'Other'
  @get_started_page.promo_code_check_box.click
  @get_started_page.promo_code_field.set 'td_trial'
end

And(/^I click the 'Continue' register button$/) do
  @get_started_page.continue_registration_button.click
end

And(/^I finish an open member creation$/) do
  # expect(page).to have_content ''
  find('#resident_address_line1').set '555, Open street'
  find('#resident_address_line2').set 'Apt 8512'
  find('#resident_city').set 'New Haven'
  find('#resident_state').select 'Connecticut'
  find('#primaryPhoneNumber-spnf-spnf-phone-number').click.set '555-555-5555'
  find('#username').set 'jbourne'
  find('#password').set '1qaz2wsx3edc'
  find('#password_confirmation').set '1qaz2wsx3edc'
  find('#security_question_id_1').select "Father's Middle Name"
  find('#security_question_response_1').set 'qqqqqqqqq'
  find('#security_question_id_2').select "Mother's Maiden Name"
  find('#security_question_response_2').set 'qqqqqqqqq'
  find('#security_question_id_3').select 'City You Were Born In'
  find('#security_question_response_3').set 'qqqqqqqqq'
  find('#billing_card_type').select 'Visa'
  find('#billing_card_number').set '4111111111111111'
  find('#billing_expiration_month').select '08'
  find('#billing_expiration_year').select '2028'
  find('#billing_address_line1').set '555, Open street'
  find('#billing_address_city').set 'New Haven'
  find('#billing_address_state').select 'Connecticut'
  find('#billing_address_postal').set '11111'
  find('#submit').click
end

Then(/^I see the 'Get Started' page$/) do
  expect(page).to have_text "Welcome to 24/7 care"
end