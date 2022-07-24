Feature: Sign in
  As a visitor
  I want to be able to sign in
  In order to become a user

  Scenario: Sign in positive flow
    Given I am not logged in visitor

     When I click sign_in link
     Then I see the log in form is opened

     When I fill in log in form with valid credentials
      And I click login button
     Then I logged as a user
