#Observer pattern structure

class Subject
	def Attach(obj)
		@observers << obj
	end

	def Detach(obj)
		
	end

	def Notify
		for observer in @observers
			observer.Update()
		end
	end
end

class ConcereteSubject < Subject
	def initialize
		@observers = Array.new
		@state = nil
	end

	def SetState(value)
		@state = value
		self.Notify
	end

	def GetState
		return @state
	end
end

class Observer
	def Update
		raise NotImplmentedError, 'Update() must be defined in subclass'
	end
end

class ConcereteObserverA < Observer
	def initialize(obj)
		@conSub = obj
		@state = nil
		@conSub.Attach(self)
	end

	def Update
		puts "ConcereteObserverA::Update"
		@state = @conSub.GetState
		puts "state: #{@state}"
	end
end

class ConcereteObserverB < Observer
	def initialize(obj)
		@conSub = obj
		@state = nil
		@conSub.Attach(self)
	end

	def Update
		puts "ConcereteObserverB::Update"
		@state = @conSub.GetState
		puts "state: #{@state}"
	end
end

conSubObj = ConcereteSubject.new
ObsObj1 = ConcereteObserverA.new(conSubObj)
ObsObj2 = ConcereteObserverB.new(conSubObj)
conSubObj.SetState(1)
