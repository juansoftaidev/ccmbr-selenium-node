Feature: Todo List Application

Scenario Outline: Masha can filter active items in her todo list

  Given Masha has a todo list containing: <items>
  And she has marked the item called: Write some code as completed
  When she filters her list to show only <filter> items
  Then her todo list should contain: <expected>

  Examples:
    | items                                           | filter     | expected                     |
    | Write some code, Play guitar, Read a book     | Completed  | Write some code              |
    | Play guitar, Read a book, Write some code     | Active     | Play guitar, Read a book     |
    | Write some code, Finish project, Attend meeting| Completed  | Write some code, Finish project |
    | Play guitar, Read a book, Complete assignment  | Active     | Play guitar, Read a book, Complete assignment |
    | Learn a new language, Practice yoga, Meditate  | Active     | Learn a new language, Practice yoga, Meditate  |
    | Buy groceries, Walk the dog, Do laundry        | Completed  | Buy groceries, Walk the dog    |

Scenario Outline: Masha can filter completed items in her todo list

  Given Masha has a todo list containing: <items>
  And she has marked the item called: Play guitar as completed
  When she filters her list to show only <filter> items
  Then her todo list should contain: <expected>

  Examples:
    | items                                           | filter     | expected                     |
    | Play guitar, Read a book, Write some code     | Completed  | Play guitar                  |
    | Write some code, Finish project, Attend meeting| Completed  | Write some code, Finish project |
    | Learn a new language, Practice yoga, Meditate  | Completed  |                              |
    | Buy groceries, Walk the dog, Do laundry        | Completed  | Buy groceries, Walk the dog    |
    | Read a book, Complete assignment, Review notes | Completed  | Complete assignment, Review notes |

Scenario Outline: Masha can filter all items in her todo list

  Given Masha has a todo list containing: <items>
  And she has marked the item called: Write some code as completed
  When she filters her list to show all items
  Then her todo list should contain: <expected>

  Examples:
    | items                                           | expected                     |
    | Write some code, Play guitar, Read a book     | Write some code, Play guitar, Read a book     |
    | Play guitar, Read a book, Write some code     | Play guitar, Read a book, Write some code     |
    | Write some code, Finish project, Attend meeting| Write some code, Finish project, Attend meeting|
    | Learn a new language, Practice yoga, Meditate  | Learn a new language, Practice yoga, Meditate  |
    | Buy groceries, Walk the dog, Do laundry        | Buy groceries, Walk the dog, Do laundry        |