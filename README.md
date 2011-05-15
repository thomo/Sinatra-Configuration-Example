Sinatra Configuration Example
=============================

I created the project just to try and document how to setup a Sinatra application with CouchRest, CouchRest-Model, Cucumber and RSpec to use a central configuration file. 

Run Manually
------------

Start the application

      $ rackup config.ru
    
and visit

* http://localhost:9292/
* http://localhost:9292/couch
* http://localhost:9292/doc

Testing
-------

To run the tests

      $ cucumber
      $ rspec .
