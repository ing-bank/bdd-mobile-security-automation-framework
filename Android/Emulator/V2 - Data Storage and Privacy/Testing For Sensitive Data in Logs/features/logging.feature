Feature: Check that no sensitive info are written in the log files

  Scenario: Open the app and press OMTG_DATAST_002_Logging
    Given I clean "all" the application log
    When I press "OMTG_DATAST_002_Logging"
    Then I enter "Joe Hacker" in "loggingUsername"
    Then I enter "secret" in "loggingPassword"
    Then I press "Login"
    And I should not see text with "secret" in my "Debug" log
