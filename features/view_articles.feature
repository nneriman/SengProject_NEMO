Feature: Show all articles
    As a user
    I want to view articles
    So that I can select one article to read

Scenario: Show articles list
    Given I am on the homepage
    And there are already 5 articles
    Then I can see list of 5 articles
