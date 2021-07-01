#Strategy pattern structure


class Context
	def intialize
		@strategy = nil
	end

	def SetStrategy(strategyObj)
		@strategy = strategyObj
	end

	def GetStrategy
		return @strategy
	end

	def ContextInterface
		@strategy.AlgorithemInterface
	end
end

class Strategy
	def AlgorithemInterface
		raise NotImplmentedError, 'AlgorithemInterface() must be defined in subclass'
	end
end

class ConcreteStrategyA < Strategy
	def AlgorithemInterface
		puts "Inside ConcreteStrategyA::AlgorithemInterface"
	end
end

class ConcreteStrategyB < Strategy
	def AlgorithemInterface
		puts "Inside ConcreteStrategyB::AlgorithemInterface"
	end
end

class ConcreteStrategyC < Strategy
	def AlgorithemInterface
		puts "Inside ConcreteStrategyC::AlgorithemInterface"
	end
end

context = Context.new
conStratA = ConcreteStrategyA.new
context.SetStrategy(conStratA)
context.ContextInterface

conStratB = ConcreteStrategyA.new
context.SetStrategy(conStratB)
context.ContextInterface

conStratC = ConcreteStrategyA.new
context.SetStrategy(conStratC)
context.ContextInterface