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
    When I fill in "merge_with" with the second-one article id
    And I press "Merge"
    Then I should be on the first-one article edit page
    And I should see "First article content"
    And I should see "Second article content"
    #When I fill in "article_title" with "Foobar"
    #And I fill in "article__body_and_extended_editor" with "Lorem Ipsum"
    #And I press "Publish"
    #Then I should be on the admin content page
    #When I go to the home page
    #Then I should see "Foobar"
    #When I follow "Foobar"
    #Then I should see "Lorem Ipsum"
