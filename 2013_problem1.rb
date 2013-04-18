require 'test/unit'

class Program
  attr_accessor :start_time, :end_time, :num_clock
	attr_accessor :period, :ave_clock

	def initialize(start_time, end_time, num_clock)
		@start_time = start_time
		@end_time = end_time
		@num_clock = num_clock
		@period = @end_time - @start_time
		@ave_clock = @num_clock.to_f / @period 
	end
end

class Calculator
	attr_accessor :moments, :programs
	def initialize
		@moments = []
		@programs = []
	end

	def add_moment(sec)
		@moments << sec
	end

	def add_program(program)
		@programs << program
	end

	def method_name
		
	end
end

class TestProgram < Test::Unit::TestCase
	def test_Program_init
		browser = Program.new(10, 11, 30)
		assert_equal 10, browser.start_time
		assert_equal 11, browser.end_time
		assert_equal 30, browser.num_clock
		assert_equal 1, browser.period
		assert_equal 30, browser.ave_clock

		system = Program.new(10, 11, 20)
		assert_equal 10, system.start_time
		assert_equal 11, system.end_time
		assert_equal 20, system.num_clock
		assert_equal 1, system.period
		assert_equal 20, system.ave_clock

		idle = Program.new(9, 19, 100)
		assert_equal 9, idle.start_time
		assert_equal 19, idle.end_time
		assert_equal 100, idle.num_clock
		assert_equal 10, idle.period
		assert_equal 10, idle.ave_clock
	end
end

class TestCalculator < Test::Unit::TestCase
	def test_Calculator_init
		
	end

	def test_add_moment
		calculator1 = Calculator.new
		calculator1.add_moment(9);
		assert_equal true, calculator1.moments.include?(9)

		calculator2 = Calculator.new
		calculator1.add_moment(10);
		calculator1.add_moment(11)
		assert_equal true, calculator1.moments.include?(10)
		assert_equal true, calculator1.moments.include?(11)
	end

	def test_add_programs
		calculator1 = Calculator.new
		browser = Program.new(10, 11, 30)
		calculator1.add_program browser
		assert_equal true, calculator1.programs.include?(browser)
		idle = Program.new(9, 19, 100)
		calculator1.add_program idle
		assert_equal true, calculator1.programs.include?(idle)
	end
end
