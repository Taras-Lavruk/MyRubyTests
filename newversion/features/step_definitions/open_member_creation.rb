Given(/^I am on the landing page$/) do
  visit 'https://member.whoami-integration.integration.teladoc.io/signin'
end

When(/^I click the 'Get Started' button$/) do
  find(:xpath, "//a[contains(text(),'Get Started')]").click
end

And(/^I fill in registration form$/) do
  find('#first_name').set 'Jason'
  find('#last_name').set 'Bourne'
  find('#month').set '01'
  find('#day').set '01'
  find('#year').set '1977'
  #find('#country_cd').select 'United State of America'
  find('#postal').set '06901'
  find('#email_address').set 'open1234@mail.com'
  find('#language').select 'Arabic'
  find('#gender').select 'Other'
  find(:xpath, "//label[contains(text(),'I have a Teladoc Promo Code.')]").click
  find('#promo_code').set 'td_trial'
end

And(/^I click the 'Continue' register button$/) do
  find(:xpath, "//span[contains(text(),'Continue')]").click
end

And(/^I finish an open member creation$/) do
  # expect(page).to have_content ''
  find('#resident_address_line1').set '555, Open street'
  find('#resident_address_line2').set 'Apt 8512'
  find('#resident_city').set 'New Haven'
  #find('#resident_country_cd').select 'United State of America'
  find('#resident_state').select 'Connecticut'
  #find('#resident_zipcode').set '06901'
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
  sleep 5
end

Then(/^I see the 'Get Started' page$/) do
  expect(page).to have_text "Welcome to 24/7 care"
end