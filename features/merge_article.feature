Feature: Merge two articles
  As a blog administrator
  In order to reduce similar articles
  I want to be able to merge similar articles

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    And I have "first one" article created with content "First article content"
    And I have "second one" article created with content "Second article content"

  Scenario: Successfully merge two articles
    Given I am on "first one" article edit page
    Then I should see "Merge articles"
    When I fill in "merge_with" with "second one" article id
    And I press "Merge With This Article"
    Then I should be on "first one" article edit page
    And I should see "First article content"
    And I should see "Second article content"
