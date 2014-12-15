Feature: As an admin
  I want to add an article
  So that I can share my experience

  Background:
    Given admin is logged in

  Scenario: Uploading article
    Given I am on article upload page
    When I upload a valid article with title "Test"
    Then I should see "Success"