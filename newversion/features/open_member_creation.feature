Feature: Open member creation
  As a open user
  I want to be able to create an account using 'td_trial' promo code
  In order to become a member

  Scenario: An open member creation
    Given I am on the landing page

    When I am on 'Get started' page I see...
    And I fill in registration form
    And I click the 'Continue' register button
    And I finish an open member creation
    Then I see the 'Confirm' page'