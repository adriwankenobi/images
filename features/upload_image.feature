Feature: Upload image
    In order to create new image in the database
    A visitor
    I want to be able to upload an image file with the name

    Scenario: Uploading a valid image
      Given I visit the new image page
      When I complete the form with a valid image
      Then I should be sent to the index page

    Scenario: Uploading a wrong image
      Given I visit the new image page
      When I complete the form with a wrong image
      Then I should see the new image page again