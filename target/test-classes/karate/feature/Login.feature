Feature: Login

  Background:
    * url 'https://conduit-api.bondaracademy.com/api/'

  Scenario: Login
    Given path 'users/login'
    And request { "user": { "email": "test123456@karate.com", "password": "test123456" } }
    When method post
    Then status 200
    * def token = response.user.token
 