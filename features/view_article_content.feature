Feature: Show an article content
  As a user
  I want to view an article content
  So that I can read the articles

  Scenario: Show an article content
    Given there is an article titled with "Sample Title" and content with "Sample Content" and I am on article page
    When I click "Sample Title"
    Then I can see content of the article