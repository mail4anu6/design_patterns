class Bicycle
	attr_reader :style, :size, :tape_color, :front_shock, :rear_shock

	def initialize(**opts)
		@style = opts[:style]
		@size = opts[:size]
		@tape_color = opts[:tape_color]
		@front_shock = opts[:front_shock]
		@rear_shock = opts[:rear_shock]
	end

	#check for spare
	def spares
		if style == 'road'
			{ chain: '11-speed', tire_size: '23', tape_color: tape_color}
		else
			{ chain: '11-speed', tire_size: '2.2', tape_color: front_shock}
		end
	end
end

bike = Bicycle.new(style: 'mountain', size: 'S', front_shock: 'Manitou', rear_shock:  'Fox')
puts bike.spares

bike = Bicycle.new(style: 'road', size: 'M', tape_color:  'red')
puts bike.spares
