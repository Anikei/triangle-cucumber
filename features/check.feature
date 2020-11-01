Feature: Check

  Scenario: Check the triangle
    Given the sides where a is "<a>" 
    And b is "<b>"
    And c is "<c>"
    When the check is run
    Then the output should be "<output>"

    Examples:
      | a     | b      | c     | output         |
      | 2     | 3      | 4     | valid          |
      | 2.5   | 3.5    | 5.5   | valid          |
      | 2     | 2      | 5     | invalid        |
      | 4     | 4      | 5     | isosceles      |
      | 2     | 2      | 2     | equaliteral    |
      | 1     | 1      | 1     | equaliteral    |
      | 99    | 99     | 99    | equaliteral    |
      | 1     | 2      | 3     | invalid        |
      | 1     | 3      | 2     | invalid        |
      | 3     | 2      | 1     | invalid        |
      | 2     | 5      | 10    | invalid        |
      | 2     | 2      | 4     | invalid        |
      | 0     | 1      | 2     | zero value     |
      | 1     | 0      | 2     | zero value     |
      | 1     | 2      | 0     | zero value     |
      | 0     | 0      | 0     | zero value     |
      | 15    | 20     | -1    | negative value |
      | 15    | 20     |       | no args        |
      | 15    |        |       | no args        |
