class GetStartedPage <SitePrism::Page
  set_url 'https://member.whoami-integration.integration.teladoc.io/registrations/get_started'

  element :sign_in_link, :xpath, "//a[contains(text(),'sign in')]"
  element :first_name_field, '#first_name'
  element :last_name_field, '#last_name'
  # element :first_name_field, '#first_name'
  element :month_field, '#month'
  element :day_field, '#day'
  element :year_field, '#year'
  element :postal_field, '#postal'
  element :email_address_field, '#email_address'
  element :language_field, '#language'
  element :gender_field, '#gender'
  element :promo_code_check_box, 'body.registration.foundation-style.index.white-label.responsive:nth-child(2) div.row.registration-wrapper:nth-child(1) div.main_left:nth-child(2) div.row div.module.progressive.personal_information.medium-9.medium-centered.large-9.large-centered div.f1b76ey0.registration-form-container div.fngxb1j.foundation-style div.f1vfyt1j.foundation-style.fo077u4 div.fngxb1j.foundation-style:nth-child(2) div.f1vfyt1j.foundation-style.fo077u4 form.f1b76ey0.form-container div.fngxb1j.foundation-style.promo-code-container:nth-child(8) div.f1vfyt1j.foundation-style.fo077u4 div:nth-child(1) div.f1f1ygnm > label:nth-child(2)'
  element :promo_code_field, '#promo_code'
  element :continue_registration_button, '#continue-registration-button'
end