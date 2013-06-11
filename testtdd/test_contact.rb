require 'test/unit'
require_relative '../class_contact'

class TestContact <Test::Unit::TestCase

	def setup

		@contact = Contact.new(id: 0, firstname: "Will", lastname: "Richman", email: "will@bit.com", notes: "cool guy")

	end


	def test_initialize
		assert_equal "Will", @contact.firstname
	end


	def test_display
		assert_equal "id: 0\n" + "firstname: Will\n" + "lastname: Richman\n" + "email: will@bit.com\n" + "notes: cool guy\n", @contact.display
	end

end
