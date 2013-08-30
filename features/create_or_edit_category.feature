Feature: Create or edit Category
  As a blog administrator
  In order to organize posts into categories
  I want to be able create or edit categories

  Background:
    Given the blog is set up
  	Given I am logged into the admin panel as admin

  Scenario: Adding category
  	When I go to the admin categories page
  	And I fill in "Name" with "technology"
  	And I fill in "category_keywords" with "tech technology computer"
  	And I fill in "category_permalink" with "tech"
  	And I fill in "category_description" with "Category about technology and computers"
  	And I press "Save"
  	Then I should be on the new category page
  	And I should see "technology"
  	And I should see "tech technology computer"
  	And I should see "tech"
  	And I should see "Category about technology and computers"

  Scenario: Editing category
  	When I go to the admin categories page
  	And I fill in "category_name" with "technology"
  	And I fill in "category_keywords" with "tech technology computer"
  	And I fill in "category_permalink" with "tech"
  	And I fill in "category_description" with "Category about technology and computers"
  	And I press "Save"
  	Then I should be on the new category page
  	And I follow "Edit"
  	And I fill in "category_name" with "web"
  	And I fill in "category_keywords" with "web social internet"
  	And I fill in "category_permalink" with "web"
  	And I fill in "category_description" with "Category about the world wide web"
  	And I press "Save"
  	Then I should be on the new category page
  	And I should see "web"
  	And I should see "web social internet"
  	And I should see "web"
  	And I should see "Category about the world wide web"
