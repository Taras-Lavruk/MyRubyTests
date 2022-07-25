class SignInPage <SitePrism::Page
  set_url 'https://member.whoami-integration.integration.teladoc.io/signin'

  element :sign_in_button, 'body.signin.responsive.logged_out:nth-child(2) div.login-section--wrapper:nth-child(1) section.login-screen div.row div.small-6.columns:nth-child(1) form:nth-child(2) ul:nth-child(3) li.flex-column.margin-height-reset:nth-child(3) > input.button.purple.login-submit'
  element :get_started_button, 'body.signin.responsive.logged_out:nth-child(2) div.login-section--wrapper:nth-child(1) section.login-screen div.row div.small-6.columns:nth-child(2) > a.button.baseline.purple.start_registration:nth-child(4)'
  element :login_username_field, '#login_username'
  element :login_password_field, '#login_password'
end