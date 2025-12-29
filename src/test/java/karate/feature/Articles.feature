Feature: Test Articles

  Background:
    * url 'https://conduit-api.bondaracademy.com/api/'
    * def login = call read('login.feature')
    * def token = login.token
    

    Scenario: Create Articles
        # Given path 'users/login'
        # And request { "user": { "email": "test123456@karate.com", "password": "test123456" } }
        # When method post
        # Then status 200
        # * def token = response.user.token
    
    # Scenario: Create an article
    #     Given header Authorization = 'Token ' + token
    #     And path 'articles'
    #     And request { "article": { "tagList": [], "title": "This is a test article tt", "description": "Hello World" ,"body":"body"} }
    #     When method post
    #     Then status 201
    #     And match response.article.title == 'This is a test article tt'

        Given header Authorization = 'Token ' + token
        And path 'articles'
        And request { "article": { "tagList": [], "title": "Del Test test", "description": "Hello World" ,"body":"body"} }
        When method post
        Then status 201
        * def articleSlug = response.article.slug

        Given header Authorization = 'Token ' + token
        Given path 'articles/' + articleSlug
        When method delete
        Then status 204