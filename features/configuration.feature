Feature: Configuration 
  In order to config the application  
  As a user
  I want to enter the site configuration on a central place.
  
  Scenario: Read configuration from config/environment.rb 
 		Given I am on the home page
    Then I should see "Configuration"
		And I should see "Environment: test"
 		And I should see "Sinatra Configuration Example"
		And I should see "Example Author"
		And I should see "test value"
		
