class Contact

attr_accessor :id, :firstname, :lastname, :email, :notes

	def initialize(contact)
		@id = contact[:id]
		@firstname = contact[:firstname]
		@lastname = contact[:lastname]
		@email = contact[:email]
		@notes = contact[:notes]
	end

	def display
		
		 "id: #{@id}\n" + "firstname: #{@firstname}\n" + "lastname: #{@lastname}\n" + "email: #{@email}\n" + "notes: #{@notes}\n"
	end

end