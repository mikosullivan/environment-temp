require 'env-tmp'

class EnvTmpTest < Minitest::Test
	def test_basic
		ENV['foo'] = 'bar'
		assert_equal 'bar', ENV['foo']

		ENV.tmp do
			ENV['foo'] = 'whatever'
			assert_equal 'whatever', ENV['foo']
		end
		
		assert_equal 'bar', ENV['foo']
	end
end