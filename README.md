# QCharity-Web

![Alt text](src/main/webapp/static/qclogo.png?raw=true "Title")

QCharity is a Low Code Automation testing platform, you can test any Application here. It Supports , GUI - WEB, GUI- MOBILE, API and Data Base test automation

#### System requirements:
````
1.Spring Boot
2.Playwright
3.Java JDK 11
4.Lombok
5.Cucumber
````
#### How to start the application:

````
mvn spring-boot:run
````

#### Application URL for Local:
````
http://localhost:8080/welcome
````

#### Run Tests:
````
1.Select a Feature name (Optional) --> If not selected runs all features
2.Select a Scenario Name (Optional) --> If not selected run all scenarios under selected feature
3.Select a tag (Optional)  --> If not selected runs all tests under selected feature/scenarios
````
#### Add new Feature/Scenarios:
````
Its a low code BDD platform, you need to mention Web Action, Web Element Name and Web Element
1. Web Action -> Example Click, Fill, Scroll etc. They are prepopulated options
2. Web Element name --> Give a name we will use that name to store the Web Element
3. Web Element -> Example XPATH, CSS, ID etc.
````
This is how you Scenario will be added
```gherkin
Scenario: Scenario 1
Given Agent fills username "xxxx"
And Agent fills password "xxxx"
When Agent clicks on SignIn button
Then login is successful 
```
