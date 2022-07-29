module FeatureHelper
  def login(username, password)
    sign_in_page = SignInPage.new
    sign_in_page.load

    sign_in_page.login_username_field.set username
    sign_in_page.login_password_field.set password
    sign_in_page.sign_in_button.click
  end
end
