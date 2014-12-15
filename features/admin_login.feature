Feature:As an admin
  I want to login to my website
  So that I can reach my admin panel

  Scenario: Show admin panel
    Given I am on the login page
    When I write email "email" and password "password"
    And I should click button
    Then I should be on the admin panel page
