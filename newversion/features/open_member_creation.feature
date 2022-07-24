Feature: Open member creation
  As a open user
  I want to be able to create an account using 'td_trial' promo code
  In order to become a member

  Scenario: An open member creation
    Given I am on the landing page

    When I click the 'Get Started' button
    And I fill in registration form
    And I click the 'Continue' register button
    And I finish an open member creation
    Then I see the 'Get Started' page

    # When I fill in log in form with valid credentials
    # And I click login button
    # Then I logged as a user