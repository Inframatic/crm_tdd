require_relative 'class_contact'

class Database

	attr_accessor :databasearray

	def initialize
		@databasearray = []
	end

	def add(contact)
		@databasearray << contact
	end	

	def display_all_contacts
		@databasearray.each do |contact|
			return "id: #{contact.id}\n" + "firstname: #{contact.firstname}\n" + "lastname: #{contact.lastname}\n" + "email: #{contact.email}\n" + "notes: #{contact.notes}\n"
		end
	end

	def display_by_name(name)
		@databasearray.each do |contact|
			if name == contact.firstname
			 return contact
			end
		end
	end
	
	def info_by_attribute(attribute)

		@databasearray.each do |contact|
			if attribute == "firstname"
				return contact.firstname
			elsif attribute == "lastname"
				return contact.lastname
			elsif attribute == "email"
				return contact.email
			elsif attribute == "notes"
				return contact.notes
			end
		end
	end

	def modify(name, attribute, mod)
		@databasearray.each do |contact|
			if name == contact.firstname
				contact.send("#{attribute}=", mod)
				return contact
			end
		end
	end

	def delete(name)
		@databasearray.each do |contact|
			if name == contact.firstname
			 @databasearray.delete(contact)
			 return contact
			end
		end


	end

end