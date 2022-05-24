Feature: Web order app login
  As a user
  I should be able to login to web order app

  Scenario: User login successfully
    Given we are at web order login page
    When we provide valid credentials
    Then we should see all order page


  Scenario: User login fail
    Given we are at web order login page
    When we provide invalid credentials
    Then we should still be at login page
    And login error message should be present


  Scenario: User login with specific credentials
    Given we are at web order login page
    # whatever is enclosed inside quotation " " will be send as parameter value
    # step definition will look like this
    # @When("user provide username {string} and password {string}")
    When user provide username "Tester" and password "test"
    Then we should see all order page

  Scenario: User login with wrong credentials
    Given we are at web order login page
    When user provide username "BLA" and password "BLA"
    Then we should still be at login page
    And login error message should be present

