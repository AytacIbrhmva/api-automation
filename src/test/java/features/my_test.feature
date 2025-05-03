Feature: Get Post Info

  Scenario: Get post by ID
    Given I send a GET request to "https://jsonplaceholder.typicode.com/posts/2"
    Then the status code should be 200
    And the response should contain
      """
      {
        "userId": 1,
        "id": 2,
        "title": "qui est esse",
        "body": "est rerum tempore vitae\nsequi sint nihil reprehenderit dolor beatae ea dolores neque\nfugiat blanditiis voluptate porro vel nihil molestiae ut reiciendis\nqui aperiam non debitis possimus qui neque nisi nulla"
      }
      """