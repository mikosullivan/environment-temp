def ENV.tmp()
	hold = ENV.to_h
	
	begin
		yield
	ensure
		ENV.clear

		hold.each do |key, value|
			ENV[key] = value
		end
	end
end