Feature: Configuration 
  In order to ease the maintenance of the application  
  As a developer
  I want to config the application on a central place.
  
  Scenario: Read configuration from config/environment.rb 
 		Given I am on the home page
    Then I should see "Configuration"
		And I should see "Environment: test"
 		And I should see "Sinatra Configuration Example"
		And I should see "Example Author"
		And I should see "test value"
		
	Scenario: Read CouchRest Configuration
		Given I am on the couch page
		Then I should see "CouchRest" 
		And I should see "http://127.0.0.1:5984/sinatraconfig-test"
		
	Scenario: Set CouchRest_Model configuration
		Given I am on the document page
		Then I should see "Doc: My simple document"
		And I should see "Database:"
		And I should see "http://127.0.0.1:5984/sinatraconfig-test"
		
