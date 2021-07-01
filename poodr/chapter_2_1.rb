class Gear
	attr_reader :chainring, :cog
	def initialize(chainring, cog)
		@chainring = chainring
		@cog= cog
	end

	def ratio
		return chainring/cog.to_f
	end
end

puts Gear.new(52, 20).ratio