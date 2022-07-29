module FeatureHelper
  def login_member
    @sign_in_page = SignInPage.new
    @sign_in_page.load

    @sign_in_page.login_username_field.set 'hlee'
    @sign_in_page.login_password_field.set 'test123456'
    @sign_in_page.sign_in_button.click
  end
end
