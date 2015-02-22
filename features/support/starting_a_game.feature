Feature: Starting a game
  In order to play Rock Paper Scissors
  As an adult who is still a big kid inside
  I want to start a new game


  Scenario: Getting to the registration form
    Given I am on the homepage
    When I follow "New Game"
    Then I should see "What's your name?"

  Scenario: Registration process
    Given I am on the register page
    When I enter my name
    Then I should be successfully registered


