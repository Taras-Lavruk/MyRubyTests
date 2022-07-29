Feature: Sign in
  As a registered member
  I want to be able to sign in

  Scenario: Sign in positive flow
     Given I am not logged in member

      When I am on 'Sign in' page I see...
       And I fill in log in form with valid credentials
       And I click login button
      Then I logged as a user
