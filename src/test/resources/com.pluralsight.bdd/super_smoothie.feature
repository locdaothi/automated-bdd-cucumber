Feature: Super Smoothie Loyalty Card Program

  Background:
    Given The following drink categories
      | Drink              | Category | Points |
      | Banana             | Regular  | 15     |
      | Triple Berry Blend | Fancy    | 20     |
      | Earl Grey          | Tea      | 10     |

  Scenario Outline: Earning points purchasing smoothie


    Given Mine is a Morning Member
    When Mine purchase <Quantity> <Drink> drinks
    Then he should earn <Points> points
    Examples:
      | Drink              | Quantity | Points |
      | Banana             | 2        | 15     |
      | Triple Berry Blend | 1        | 20     |
      | Earl Grey          | 3        | 30     |