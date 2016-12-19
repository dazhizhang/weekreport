Feature: Publish Artilces to weekly report
    As a blog administrator
    In order to generate a new weekly report
    I want to be able to see the articles' list
    And I can publish them to the weekly report

    Background: users have been added to database

        Given the blog is set up

          Given the following articles exist:
            | id | title    | author | user_id | body     | published | published_at        | state     | type    |
            | 3  | Article1 | user_1 | 2       | Content1 | true      | 2013-24-08 22:30:00 | published | Article |
            | 4  | Article2 | user_2 | 3       | Content2 | true      | 2013-24-08 23:00:00 | un_published | Article |

    Scenario: An admin can manage articles
	Given I am logged in as "admin" with pass "aaaaaaaa"
	And I am on the List Page of User with id 3
	Then I should check "Publish" checkbox of Article1
	And I press "Publish to weekly report"
	Then I should be on the weekly report page
             And I can see "Content1"


