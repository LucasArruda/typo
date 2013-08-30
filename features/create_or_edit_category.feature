Feature: Create or edit Category
  As a blog administrator
  In order to organize posts into categories
  I want to be able create or edit categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel as author

  Scenario: Adding category
  	When I go to the admin categories page
  	And I fill in "Name" with "technology"
  	And I fill in "Keywords" with "tech technology computer"
  	And I fill in "Permalink" with "tech"
  	And I fill in "Description" with "Category about technology and computers"
  	And I press "Save"
  	Then I should be on the admin categories page
  	And I should see "technology"
  	And I should see "tech technology computer"
  	And I should see "tech"
  	And I should see "Category about technology and computers"

  Scenario: Editing category
  	When I go to the admin categories page
  	And I fill in "Name" with "technology"
  	And I fill in "Keywords" with "tech technology computer"
  	And I fill in "Permalink" with "tech"
  	And I fill in "Description" with "Category about technology and computers"
  	And I press "Save"
  	Then I should be on the admin categories page
  	And I follow "Edit"
  	And I fill in "Name" with "web"
  	And I fill in "Keywords" with "web social internet"
  	And I fill in "Permalink" with "web"
  	And I fill in "Description" with "Category about the world wide web"
  	And I press "Save"
  	Then I should be on the admin categories page
  	And I should see "web"
  	And I should see "web social internet"
  	And I should see "web"
  	And I should see "Category about the world wide web"
