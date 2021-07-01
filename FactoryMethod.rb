#Factory Method pattern structure

class Product
	def UseProduct
		raise NotImplmentedError, 'UseProduct() must be defined in subclass'
	end
end

class ConcereteProduct < Product
	def UseProduct
		puts "Inside ConcereteProduct:UseProduct()"
		
	end
end

class Creater
	def FactoryMethod
		raise NotImplmentedError, 'FactoryMethod() must be defined in subclass'
	end

	def AnOperation
		@product = FactoryMethod()
		return @product
	end
end

class ConcereteCreater < Creater
	def FactoryMethod
		return ConcereteProduct.new
	end
end

prodCreater =  ConcereteCreater.new
prod = prodCreater.AnOperation
prod.UseProduct