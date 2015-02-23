class User 
	attr_accessor :name, :email

	def initialize (attribute ={})
		@name = attribute[:name]
		@email = attribute[:email]
	end

	def formattedEmail
		"#{@name} <#{@email}"
	end
end