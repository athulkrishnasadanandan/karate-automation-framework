Feature: JSONPlaceholder Posts API Testing

  Background:
    Given url apiURL

  Scenario: Get all posts
    Given path '/posts'
    When method GET
    Then status 200
    And assert response.length > 0

  Scenario: Get post by ID
    Given path '/posts/1'
    When method GET
    Then status 200
    And match response.id == 1

  Scenario: Verify post fields
    Given path '/posts/5'
    When method GET
    Then status 200
    And match response contains { id: '#number', userId: '#number', title: '#string', body: '#string' }

  Scenario Outline: Get multiple posts
    Given path '/posts/<postId>'
    When method GET
    Then status 200
    And match response.id == <postId>

    Examples:
      | postId |
      | 1      |
      | 5      |
      | 10     |