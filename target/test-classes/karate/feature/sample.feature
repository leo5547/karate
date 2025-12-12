Feature: Test the Home Page

  Background:
    * url 'https://conduit-api.bondaracademy.com/api/'

  Scenario: Get All Tags
    Given path 'tags'
    When method get
    Then status 200
    And match response.tags contains ['Zoom', 'YouTube']
    And match response.tags !contains ['cars', 'baby']
    And match response.tags == '#array'
    And match each response.tags == '#string'  

  Scenario: Get 10 articles from page
    # Given param limit = 10
    # Given param offset = 0
    Given path 'articles'
    Given params { limit : 10, offset : 0 }
    When method get
    Then status 200
    And match response.articles == '#[10]'
    And match response.articlesCount == 10

 

