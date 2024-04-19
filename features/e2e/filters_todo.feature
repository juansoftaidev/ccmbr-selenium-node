Feature: Todo List App


  Scenario Outline: the [australis del surt] can filters active items

    Given has a todo list containing: <items>
    And she has toggled the item called: Write some code
    When she filters her list to show only <filter> items
    Then her todo list should contain: <expected>

    Examples:
      | items                                      | filter    | expected                 |
      | Write some code, Play guitar, Read a book, | Completed | Write some code          |
      | Play guitar, Read a book, Write some code  | Active    | Play guitar, Read a book |
