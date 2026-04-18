Feature: JSONPlaceholder Users API Testing

  Background:
    Given url apiURL

  Scenario: Get all users
    Given path '/users'
    When method GET
    Then status 200
    And assert response.length > 0

  Scenario: Get specific user by ID
    Given path '/users/1'
    When method GET
    Then status 200
    And match response.id == 1
    And match response.name == 'Leanne Graham'

  Scenario: Verify user email format
    Given path '/users/2'
    When method GET
    Then status 200
    And match response.email contains '@'

  Scenario Outline: Get multiple users
    Given path '/users/<userId>'
    When method GET
    Then status 200
    And match response.id == <userId>

    Examples:
      | read('users.json') |