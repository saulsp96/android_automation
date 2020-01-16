Feature: Tests for Home Screen functionality
  @default
  Scenario Outline: Default values on home screen is Foot and Centimeter
    Given I land on home screen
    Then Left unit picker value should be "<LeftUnit>"
    And Right unit picker value should be "<RightUnit>"
    Examples:
    |LeftUnit|RightUnit|
    |Yard    |Meter    |
    |Kilometer|Spoons   |

  Scenario: Show All button should be enabled at launch
    Given I land on home screen
    Then Show All button should be enabled
    When I press on Clear button
    Then Show All button should be disabled
    And Show All button should be undefined

  Scenario Outline: Verify default conversion
    Given I land on home screen
    When I type "<target>" to target text field
    Then I should see result as "<result>"
  Examples:
    |target|result|
    |      1|12   |
    |2      |24   |
    |3      |36   |
    |9      |106  |