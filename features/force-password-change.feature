Feature: Force password change
  As a good security measure
  The System forces password change on first time login
  So that the application is secured
  Scenario: First time login
    Given a valid username 'user' and password 'pass'
    When a user logs in with a username user and password pass

  Scenario: Non First time login
  
