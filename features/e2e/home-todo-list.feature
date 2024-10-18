# language: en
@masha
Feature: Manage a personal task list
    In order to stay organized and focused
    As a user
    I want to be able to create and manage my task list.

    Background:
        Given I have a list of tasks such as "Complete project report, Attend team meeting, Review code changes"

    @regression 
    Scenario Outline: Add tasks to the list

        Given I start with a fresh task list
        When I add "<new-task>" to the list
        Then I should see the total number of tasks is at least <total-tasks>
        When I view my pending tasks
        Then I should see "<new-task>" in the list

    @smoke
    Examples:
        | initial-tasks                                             | new-task                                              | total-tasks |
        | Buy groceries, Walk the dog, Do laundry                   | Finish project, Attend conference                      | 3           |
        | Respond to emails, Make phone calls, Review documents     | Meet with team, Discuss project plans                  | 3           |
        | Attend training, Complete certification, Read books       | Join online community, Participate in forums          | 2           |
        | Create content, Engage on social media, Analyze metrics   | Launch new product, Monitor sales performance         | 2           |

    @sanity @security
    Examples:
        | initial-tasks          | new-task                                              | total-tasks |
        | Attend training, Read books | Join online community, Participate in forums      | 2           |