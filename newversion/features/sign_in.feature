Feature: Sign in
  As a registered member
  I want to be able to sign in

  Scenario: Sign in positive flow
     Given I am logged in as a "djohnsson"
      Then I am on member's page
