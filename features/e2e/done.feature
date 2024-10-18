# language: en
@todo-managing @functional @gui @uat @wip @ignore
Feature: Managing task completion
    In order to stay organized and focused
    As a user
    I want to be able to mark tasks as completed and track my progress.

    @regression 
    Scenario Outline: Mark tasks as completed

        Given I have a list of tasks such as "<task-list>"
        When I mark "<completed-tasks>" in the list as done
        And I view all tasks
        Then I should see the total number of tasks is at least <total-tasks>
        And I should see "<completed-tasks>" marked as done

    @smoke
    Examples:
        | task-list                                                         | completed-tasks                | total-tasks |
        | Finish project, Attend conference, Review documents               | Finish project, Review documents | 1           |
        | Meet with team, Discuss project plans, Create content             | Meet with team, Create content  | 2           |
        | Launch new product, Monitor sales performance, Analyze metrics    | Launch new product, Analyze metrics | 2           |
        | Respond to emails, Make phone calls, Review documents             | Respond to emails, Review documents | 2           |

    
    Examples:
        | task-list                                       | completed-tasks                | total-tasks |
        | Join online community, Participate in forums    | Join online community          | 1           |

    
    Scenario Outline: Verify task completion status

        Given I have a list of tasks such as "<task-list>"
        When I mark "<completed-tasks>" in the list as done
        And I view the task details
        Then I should see "<completed-tasks>" marked as completed
        And I should see the completion status as "Done"

    Examples:
        | task-list                                                         | completed-tasks                |
        | Finish project, Attend conference, Review documents               | Finish project                  |
        | Meet with team, Discuss project plans, Create content             | Meet with team                  |
        | Launch new product, Monitor sales performance, Analyze metrics    | Launch new product              |

    Scenario Outline: Mark multiple tasks as completed

        Given I have a list of tasks such as "<task-list>"
        When I mark "<completed-tasks>" in the list as done
        And I view all tasks
        Then I should see the total number of tasks is at least <total-tasks>
        And I should see "<completed-tasks>" marked as done

    Examples:
        | task-list                                                         | completed-tasks                | total-tasks |
        | Finish project, Attend conference, Review documents               | Finish project, Attend conference | 1           |
        | Meet with team, Discuss project plans, Create content             | Meet with team, Create content  | 2           |
        | Launch new product, Monitor sales performance, Analyze metrics    | Launch new product, Analyze metrics | 2           |