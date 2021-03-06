Feature: User interfaces must look modern and be attractive

Background:
    Given I am on the Search page

Scenario: Updated CSS on Search page
	Then I should see styled font different from default
	And I should see styled buttons 
	And I should see a background image
	
Scenario: Updated CSS on results
    Given I search for "coffee"
    And I clicked the Feed Me! button
    Then I should see a background image
    And I should see styled font different from default
    And I should see a navbar
    
Scenario Outline: Updated CSS on recipe and restaurant pages
    Given I search for "coffee"
    And I clicked the Feed Me! button
    When I click on <item>
    Then I should see a background image
    And I should see styled font different from default
    And items should be centered
    And I should see a navbar
    
    Examples:
    | item |
    | "West Annenberg Cafe" |
    | "Cappuccino Cooler"|