Description: Sample test scenarios for Home_Task 1, for variant B (https://www.reddit.com/);
 

Scenario: Create account
Given I am on a page with the URL 'https://www.reddit.com/'
When I click on element located `By.xpath(//*[@href='https://www.reddit.com/register/?dest=https%3A%2F%2Fwww.reddit.com%2F'])`
When I enter `<email>` in field located `By.xpath(//input[@id='regEmail'])`
When I click on element located `By.xpath(//button[@data-step='email'])`
When I enter `<username>` in field located `By.xpath(//input[@id='regUsername'])`
When I enter `<password>` in field located `By.xpath(//input[@id='regPassword'])`
When I check checkbox located `By.xpath(//input[@id='recaptcha-anchor'])`  
When I click on element located `By.xpath(//button[@data-step='username-and-password'])`
When I click on element located `By.xpath(//button[@class='_22ChQI9alXTuxk7yqwRt8l'])`
When I click on element located `By.xpath(//button[@class='_22ChQI9alXTuxk7yqwRt8l'])`
When I click on all elements located `By.xpath(//div[@class='_3miLvWoAksppOIKDbHmCpH'])`
When I click on element located `By.xpath(//button[@class='dK60vCQAai2JPR7mVZ4ir'])`
When I click on element located `By.xpath(//button[@class='_3CPhqReN6aQjDfxC-MaWG4'])`
When I click on element located `By.xpath(//button[@class='dK60vCQAai2JPR7mVZ4ir'])`
When I click on element located `By.xpath(//button[@class='_22ChQI9alXTuxk7yqwRt8l'])`
Then the text '<message>' exists
Examples:
|email                             |username                  |password |message|
|#{generate(Internet.emailAddress)}|#{generate(Name.username)}|Test@123 |Welcome to your new inbox!|



Scenario: Perform search by top search bar (+ Sign in as not able to pass captcha in previous scenario)
Given I am on a page with the URL 'https://www.reddit.com/'
When I click on element located `By.xpath(//*[@href='https://www.reddit.com/login/?dest=https%3A%2F%2Fwww.reddit.com%2F'])`
When I enter `${userName}` in field located `By.xpath(//input[@id='loginUsername'])` 
When I enter `${userPass}` in field located `By.xpath(//input[@id='loginPassword'])`
When I click on element located `By.xpath(//button[@class='AnimatedForm__submitButton m-full-width'])`
When I enter `text` in field located `By.xpath(//input[@id='header-search-bar'])`
Then I press ENTER on keyboard




Scenario: Open post page from search result page
Given I am on a page with the URL 'https://www.reddit.com/search/?q=text'

 