@test
Feature: "https://devexpress.github.io/testcafe/example/"
    As a dev
    I would want ....
    So I can ....
    
    Background: 
        Given I launch the web site

    Scenario: Verify Populate button generate name on text field
        Then I should see name populated after clicking on populate button
    
    Scenario: Verify multiple checkbox can be checked
        Then I should be able to check multiple checkboxes

    Scenario: Verify only one radio button can be selected
        Then I should be able to select only one radio button
    
    Scenario: Verify scale and comments field are enabled after checking tried TestCafe
        Then I should see scale and comments field are enabled after checking tried TestCafe
    
    Scenario: Verify scale and comments field are disabled before checking tried TestCafe
        Then I should see scale and comments field are disabled before checking tried TestCafe
    
    Scenario: Verify scale is adjustable 
        Then I should be able to shift slider
    
    Scenario: Verify submit button is not enabled when name is not filled
        Then I should see submit button disabled when name is not filled

    Scenario: Verify user able to submit form
        When I filled the form
        Then I should be able to submit successfully