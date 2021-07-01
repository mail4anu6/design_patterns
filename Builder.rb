
#Builder pattern structure

class Director
	def initialize
		@builder = nil
	end

	def SetBuilder(builderobj)
		@builder = builderobj
	end

	def Construct(name)
		if name == 'Product1'
			@builder.Create()
			@builder.BuildPartA()
			@builder.BuildPartB()
		elsif name == 'Product2'
			@builder.Create
			@builder.BuildPartC()
			@builder.BuildPartD()
		end
	end
end

class Builder
	def Create
		raise NotImplementedError, "Create() must be defined in subclass"
	end
	
	def BuildPartA
		raise NotImplementedError, "BuildPartA() must be defined in subclass"
	end

	def BuildPartB
		raise NotImplementedError, "BuildPartB() must be defined in subclass"
	end

	def BuildPartC
		raise NotImplementedError, "BuildPartC() must be defined in subclass"
	end

	def BuildPartD
		raise NotImplementedError, "BuildPartD() must be defined in subclass"
	end
end

class ConcreteBuilder1 < Builder
	def initialize
		@product = nil
	end

	def Create
		@product = Product1.new
	end

	def BuildPartA
	end

	def BuildPartB
	end

	def BuildPartC
	end

	def BuildPartD
	end

	def GetProduct
		return @product
	end
end

class ConcreteBuilder2 < Builder
	def initialize
		@product = nil
	end

	def Create
		@product = Product2.new
	end

	def BuildPartA
	end

	def BuildPartB
	end

	def BuildPartC
	end

	def BuildPartD
	end

	def GetProduct
		return @product
	end
end

class Product1
	def UseProduct
		puts "Inside Product1: UseProduct"
	end
end

class Product2
	def UseProduct
		puts "Inside Product2: UseProduct"
	end
end

director = Director.new

builder1 = ConcreteBuilder1.new
director.SetBuilder(builder1)
director.Construct('Product1')
prod1 = builder1.GetProduct
prod1.UseProduct

builder2 = ConcreteBuilder2.new
director.SetBuilder(builder2)
director.Construct('Product2')
prod2 = builder2.GetProduct
prod2.UseProduct



