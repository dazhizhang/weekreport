Feature: Manage Users
    As a blog administrator
    In order to manage all of the users
    I want to be able to see the users' list
    And I can modify the role of the user

    Background: users have been added to database

        Given the blog is set up

        Given the following users exist:
            | id | name  | password | email            | state  |
            | 2          | User1 | 1111111  | usr1@example.com | admin |
            | 3          | User2 | 2222222  | usr2@example.com | active |

    Scenario: An admin can manage articles
	Given I am logged in as "admin" with pass "aaaaaaaa"
	And I am on the List Page of User with id 3
	Then I should see "Edit"
	And I press "Edit"
	Then I should be on the user edit page
             When I select "user_role" with "approved"
             When I follow "save"
             Then I should be on the use detail page
             And I can see "approved"


