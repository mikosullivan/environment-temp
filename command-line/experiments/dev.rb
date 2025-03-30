#!/usr/bin/ruby -w
require 'pq'
require 'env-tmp'

ENV['foo'] = 'bar'

ENV.tmp do
	ENV['foo'] = 'whatever'
	puts ENV['foo']
end

puts ENV['foo']

# done
puts '[done]'