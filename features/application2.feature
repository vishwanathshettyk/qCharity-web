Feature: Test Playwright

  @LTIM100234
  Scenario: Validate Playwright search dialog
    When login page is opened
    When fill "shetty.vishwa@gmail.com" in userName box
    And fill "HubGit@23" in password box
    And clicks on singIn button
    Given home_page page is opened