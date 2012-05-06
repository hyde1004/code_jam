require 'test/unit'

class KoreaTelNum
	
	def input(str)
		return nil
	end
end

class KoreaTelNumTest < Test::Unit::TestCase
	def setup
		@aTelNum = KoreaTelNum.new
	end

	def test_input
		assert_equal @aTelNum.input("02-2055-1234"), "02-2055-1234"
	end
end


