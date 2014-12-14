Feature: Show all categorized photos
  As a user
  I want to see all categorized photos
  So that I can select one category to see photos

  Scenario: Show categorized photos
    Given I am on the homepage
    And there are already 5 categorized photos
    Then I can see all categorized 5 photos
