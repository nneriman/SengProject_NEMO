Feature: Show all photos
  As a user
  I want to see all photos
  So that I can decide whether I buy it or not

  Scenario: Show all photos
    Given there is a category titled with "Sample Title" and I am on the categories page
    And there are already 5 photos
    When I click on "Sample Title" link
    Then I can see all 5 photos