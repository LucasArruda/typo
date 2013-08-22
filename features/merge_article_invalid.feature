Feature: Merge Articles invalid for non-admin
  As a blog administrator
  In order to dry out articles
  I want to be able to merge two articles

  Background:
    Given the blog is set up
    And I am logged in the admin panel as an author

  Scenario: An non-admin can't merge articles
    Given I am on the edit article page
    Then I should not see "Merge Articles"
