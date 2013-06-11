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

	def search_by_name(name)
		@databasearray.each do |contact|
			if name == contact.firstname
			 return contact
			end
		end
	end
		
end