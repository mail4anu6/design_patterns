#Decorator pattern structure

class Component
	def Operation
		raise NotImplmentedError, 'Operation() must be defined in subclass'
	end
end

class ConcereteComponent < Component
	def Operation
		puts "Inside ConcereteComponent::Operation()"
	end
end

class Decorator < Component
	def initialize(obj)
		@comp = obj
	end

	def Operation
		puts "Inside Decorator::Operation()"
		@comp.Operation
	end
end

class ConcereteDecoratorA < Decorator
	def initialize(obj)
		super(obj)
		@addedState = nil
	end

	def Operation
		super
		@addedState = 1
		puts "ConcereteDecoratorA::Operation"
		puts "ConcereteDecoratorA::addedState = #{@addedState}"
	end
end

class ConcereteDecoratorB < Decorator
	def initialize(obj)
		super(obj)
	end

	def Operation
		super
		puts "ConcereteDecoratorB::Operation"
		self.AddedBehavior
	end

	def AddedBehavior
		puts "ConcereteDecoratorB::AddedBehavior"
	end
end

myComponent = ConcereteDecoratorA.new(ConcereteDecoratorB.new(ConcereteComponent.new))
myComponent.Operation