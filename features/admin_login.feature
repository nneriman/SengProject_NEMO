Feature:As an admin
  I want to login to my website
  So that I can reach my admin panel

  Scenario: Show admin panel
    Given I am on the homepage
    When I try to login with "test" and "secret"
    Then I should be logged in
    When I try to login with "test" and "wrongpassword"
    Then I should not be logged in
    And I should be shown error message "Invalid username or password"