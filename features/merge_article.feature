Feature: Merge Articles
  As a blog administrator
  In order to dry out articles and make them better
  I want to be able to merge two articles

  Background:
    Given the blog is set up 
    And I am logged into the admin panel as an admin

  Scenario: Merge Articles not available for new articles
    Given I am on the new article page
    Then I should not see "Merge Articles"

  Scenario: Successfully merges two articles
    Given I am on the new article page
    When I fill in "article_title" with "Article 1"
    And I fill in "article__body_and_extended_editor" with "Content from article 1"
    And I press "Publish"
    When I fill in "article_title" with "Article 2"
    And I fill in "article__body_and_extended_editor" with "Content from article 2"
    And I press "Publish"
    And I follow "Edit"
    Given I am on the edit article page
    When I fill in "merge_with" with "5"
    And I press "Merge"
    Then I should be on the edit article page
    And I should see "Content from article 1"
    And I should see "Content from article 2"