Description: Home Task 2
 

Scenario: Sign Up
Given I am on the main application page
When I click on element located `By.xpath(//button[@data-analytics-button='greenSignupHeroButton'])`
When I enter `<email>` in field located `By.xpath(//input[@id='email'])`
When I click on element located `By.xpath(//input[@id='signup-submit'])`
When I wait until element located `By.xpath(//input[@id='displayName'])` appears
When I enter `<username>` in field located `By.xpath(//*[@id='displayName'])`
When I click on element located `By.xpath(//button[@id='signup-submit'])`
Examples:
|email                             |username                  |
|#{generate(Internet.emailAddress)}|#{generate(Name.username)}|



Scenario: Sign In
Given I am on the main application page
When I click on element located `By.xpath(//*[@class='btn btn-sm btn-link text-primary'])`
When I enter `${userEmail}` in field located `By.xpath(//input[@id='user'])` 
When I click on element located `By.xpath(//*[@id='login'])`
When I wait until element located `By.xpath(//input[@id='password'])` appears
When I enter `${userPass}` in field located `By.xpath(//input[@id='password'])`
When I click on element located `By.xpath(//button[@id='login-submit'])`
When I wait until element located `By.xpath(//button[@data-test-id='header-member-menu-button'])` appears
When I click on element located `By.xpath(//button[@data-test-id='header-member-menu-button'])`
When I click on element located `By.xpath(//*[@data-test-id='header-member-menu-profile'])`
When I wait until element located `By.xpath(//*[@data-tab='profile'])` appears
When I COMPARE_AGAINST baseline with `profile`
When I click on element located `By.xpath(//*[@data-tab='activity'])`
When I COMPARE_AGAINST baseline with `activity`
When I click on element located `By.xpath(//*[@data-tab='cards'])`
When I wait until element located `By.xpath(//*[@class='quiet-button mod-with-image js-set-filter'])` appears
When I COMPARE_AGAINST baseline with `cards`
When I click on element located `By.xpath(//*[@data-tab='settings'])`
When I wait until element located `By.xpath(//*[@class='big-link'])` appears
When I COMPARE_AGAINST baseline with `settings`
When I click on element located `By.xpath(//div[@class='_2ft40Nx3NZII2i'])`
When I COMPARE_AGAINST baseline with `home` ignoring:
|ACCEPTABLE_DIFF_PERCENTAGE|
|5                         |