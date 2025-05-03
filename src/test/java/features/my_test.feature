Feature: Get Post Info

  Scenario: Get post by ID
    Given I send a GET request to "https://jsonplaceholder.typicode.com/posts/1"
    Then the status code should be 200
    And the response should contain "userId"
