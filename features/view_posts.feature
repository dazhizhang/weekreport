Feature: View Posts
    As a blog administrator
    In order to manage all of the posts
    I want to be able to see the posts list

    Background: articles and users have been added to database

        Given the blog is set up

        Given the following users exist:
            | id | name  | password | email            | state  |
            | 2          | User1 | 1111111  | usr1@example.com | admin |
            | 3          | User2 | 2222222  | usr2@example.com | active |

        Given the following articles exist:
            | id | title    | author | user_id | body     | published | published_at        | state     | type    |
            | 3  | Article1 | user_1 | 2       | Content1 | true      | 2013-24-08 22:30:00 | published | Article |
            | 4  | Article2 | user_2 | 3       | Content2 | true      | 2013-24-08 23:00:00 | un_published | Article |


    Scenario: An admin can manage articles
	Given I am logged in as "admin" with pass "aaaaaaaa"
	And I am on the List Page of Article with id 3
	Then I should see "Edit"
	And I press "Edit"
	Then I should be on the article edit page

