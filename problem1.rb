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
		assert_equal @aTelNum.input("027008777"), "02-700-8777"
		assert_equal @aTelNum.input("01075991567"), "010-7599-1567"
		assert_equal @aTelNum.input("0537895566"), "053-789-5566"
		assert_equal @aTelNum.input("011-83558900"), "011-8355-8900"
		assert_equal @aTelNum.input("9874329877"), "9874329877"
		assert_equal @aTelNum.input("010 45669911"), "010-4566-9911"
		assert_equal @aTelNum.input("032 332 2678"), "032-332-2678"
		assert_equal @aTelNum.input("0518875544"), "051-887-5544"
		assert_equal @aTelNum.input("0179115211"), "017-911-5211"
	end
end


