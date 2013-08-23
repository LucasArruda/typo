Feature: Merge Articles invalid for non-admin
  As a blog administrator
  In order to dry out articles
  I want to be able to merge two articles

  Background:
    Given the blog is set up
    And I am logged into the admin panel as author

  Scenario: A non-admin cannot merge two articles 
    Given I am on the new article page
    When I fill in "article_title" with "Article 1"
    And I fill in "article__body_and_extended_editor" with "Content from article 1"
    And I press "Publish"
    And I go to the new article page
    When I fill in "article_title" with "Article 2"
    And I fill in "article__body_and_extended_editor" with "Content from article 2"
    And I press "Publish"
    And I follow "Edit"
    Then I should not see "Merge Articles"
