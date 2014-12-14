Feature: As an admin
  I want to add photos
  So that I can sell my photos

  Scenario: Uploading photo
    Given I am on photo upload page
    When I upload a valid photo with title "Test"
    Then I should see "Success"
    And I should see "Test"

  Scenario: Uploading invalid photo
    Given I am on photo upload page
    When I upload an invalid photo with title "Test"
    Then I should see "Error"