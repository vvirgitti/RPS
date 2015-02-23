Feature: Playing
  In order to play Rock Paper Scissors
  As an adult who is still a big kid inside
  I want to play against the computer


  Scenario: Confirmation of my choice
    Given I am on the "Rock" or "Paper" or "Scissors" page
    When I follow the link "See your opponent's choice"
    Then I should see a text "Your opponent has chosen"