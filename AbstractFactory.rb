#Abstract factory pattern structure

class AbstractFactory
	def CreateProduct1
		raise NotImplementedError, 'CreateProduct1 must be defined in subclass'
	end

	def CreateProduct2
		raise NotImplementedError, 'CreateProduct2 must be defined in subclass'
	end
end

class ConcreteFactory1 < AbstractFactory
	def CreateProduct1
		return product1_1.new	
	end

	def CreateProduct2
		return product2_1.new	
	end
end

class ConcreteFactory2 < AbstractFactory
	def CreateProduct1
		return product1_2.new	
	end

	def CreateProduct2
		return product2_2.new
	end
end

class AbstractProduct1
	def Display
		raise NotImplementedError, 'Display must be defined in subclass'	
	end
end

class Product1_1 < AbstractProduct1
	def Display
		puts "inside product1_1 : Display"
	end
end

class Product2_1 < AbstractProduct1
	def Display
		puts "inside product2_1 : Display"
	end
end

class AbstractProduct2
	def Display
		raise NotImplementedError, 'Display must be defined in subclass'
	end
end

class Product2_1 < AbstractProduct2
	def Display
		puts "inside product2_1 : Display"
	end
end

class Product2_2 < AbstractProduct2
	def Display
		puts "inside product2_2 : Display"
	end
end


#Methods called as per the different factories and product

#Products 1 
factory1 = ConcreteFactory1.new
prod1 = factory1.CreateProduct1
prod1.Display
prod2 = factory1.CreateProduct2
prod2.Display

#Products 2
factory2 = ConcreteFactory2.new
prod1 = factory2.CreateProduct1
prod1.Display
prod2 = factory2.CreateProduct2
prod2.Display