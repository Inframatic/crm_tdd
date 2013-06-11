require 'test/unit'
require_relative '../class_database'
require_relative '../class_contact'

class TestDatabase <Test::Unit::TestCase

	def setup
		@contact = Contact.new(id: 0, firstname: "Will",lastname: "Richman", email: "will@bit.com", notes: "cool guy")
		@contact2 = Contact.new(id: 1, firstname: "Ian",lastname: "Steffy", email: "isteffy@hotmail.com", notes: "coolest guy")
		@db = Database.new
		@db.add(@contact)
		@db.add(@contact2)
	end

	def test_initialize
		assert @db.databasearray.is_a?(Array)
	end

	def test_add
		assert @db.databasearray.include? @contact
		assert_equal "Will",@db.databasearray[0].firstname
	end

	def test_display_all_contacts
		@db.display_all_contacts
			assert_equal "Will",@db.databasearray[0].firstname
			assert_equal "Ian",@db.databasearray[1].firstname
		assert @db.databasearray.include? @contact && @contact2	
	end

	def test_search_by_name
		@db.search_by_name(@name)
		assert_equal @contact, @db.search_by_name("Will")
	end

	def test_inf


end