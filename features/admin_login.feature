Feature:As an admin
  I want to login to my website
  So that I can reach my admin panel

  Scenario: Show admin panel
    Given I am logged in as an admin
    Then I should see an error for "Invalid username or password"
