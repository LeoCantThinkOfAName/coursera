require 'test/unit'
require_relative 'calculator'

class CalculatorTest < Test::Unit::TestCase
  def setup
  	@calc = Calculator.new('test')
  end

  def test_adding
    assert_equal 39, @calc.add(30, 9)
  end

  def test_subtraction
    assert_equal 39, @calc.subtract(40, 1)
  end

  def test_division
    assert_equal 39, @calc.divide(390, 10)
  end

  def test_divide_by_zero
    assert_raise ZeroDivisionError do 
      @calc.divide(1, 0)
    end
  end
end