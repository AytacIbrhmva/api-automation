Feature: Get Post Info

  Scenario: Get post by ID
    Given I send a GET request to "https://jsonplaceholder.typicode.com/posts/1"
    Then the status code should be 200
    And the response should contain
      """
      {
        "userId": 1,
        "id": 1,
        "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
        "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
      }
      """
