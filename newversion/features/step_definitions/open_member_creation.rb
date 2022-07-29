Given(/^I am on the landing page$/) do
  @get_started_page = GetStartedPage.new
  @get_started_page.load
  # expect(page).to have_context 'Care is just a few steps away'
end

When(/^I am on 'Get started' page I see...$/) do
  expect(current_url).to include '/get_started'
  # expect(page).to have_context 'Care is just a few steps away'
  # expect(page).to have_content 'FIRST NAME'
  # expect(page).to have_content 'Last NAME'
end

And(/^I fill in registration form$/) do
  @get_started_page.first_name_field.set 'dwane'
  @get_started_page.last_name_field.set 'johnsson'
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
  @account_info_page = AccountInfoPage.new
  @account_info_page.load
  # expect(page).to have_content ''
  @account_info_page.resident_address_line1_field.set '555, Open street'
  @account_info_page.resident_address_line2_field.set 'Apt 8512'
  @account_info_page.resident_city_field.set 'New Haven'
  @account_info_page.resident_state_field.select 'Connecticut'
  @account_info_page.primary_phone_number_field.click.set '222-222-2222'
  @account_info_page.username_field.set 'djohnsson'
  @account_info_page.password_field.set 'test123456'
  @account_info_page.password_confirmation_field.set 'test123456'
  @account_info_page.security_question_id_1_dropdown.select "Father's Middle Name"
  @account_info_page.security_question_response_1_field.set "qqqqqq"
  @account_info_page.security_question_id_2_dropdown.select "Mother's Maiden Name"
  @account_info_page.security_question_response_2_field.set "aaaaa"
  @account_info_page.security_question_id_3_dropdown.select "City You Were Born In"
  @account_info_page.security_question_response_3_field.set "zzzzzz"
  @account_info_page.billing_card_type_dropdown.select 'Visa'
  @account_info_page.billing_card_number_field.set '4111111111111111'
  @account_info_page.billing_expiration_month_dropdown.select '08'
  @account_info_page.billing_expiration_year_dropdown.select '2028'
  @account_info_page.billing_address_line1_field.set '555, Open street'
  @account_info_page.billing_address_city_field.set 'New Haven'
  @account_info_page.billing_address_state_field.select 'Connecticut'
  @account_info_page.billing_address_postal_field.set '11111'
  @account_info_page.submit_button.click
end

Then(/^I see the 'Confirm' page'$/) do
  # @registration_confirmation_page = RegistrationConfirmationPage.new
  # @registration_confirmation_page.load
  expect(page).to have_text "Welcome to 24/7 care"
end