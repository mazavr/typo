Feature: Merge two articles
  As a blog administrator
  In order to reduce similar articles
  I want to be able to merge similar articles

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    And I have the article_1 created with content "First article content"
    And I have the article_2 created with content "Second article content"

  Scenario: Successfully merge two articles
    Given I am on the article_1 edit page
    Then I should see "Merge"
    When I fill in "merge_with" with the article_2 id
    And I press "Merge"
    Then I should be on the article_1 edit page
    And I should see "First article content"
    And I should see "Second article content"
