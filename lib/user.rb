require 'pry'

class User
	attr_accessor :email, :age
	@@user_list = []

	def initialize(email,age)
		@email = email
		@@user_list << self
		@age = age.to_i
	end

	#def change_password(new_password)
	#	@encrypted_password = encrypt(new_password)
	#end

	def show_itself
		puts self
	end

	def self.all
		return @@user_list
	end

	def self.find_by_email(email_search)
		@@user_list.each do |user|
			if user.email == email_search
			puts "Voici l'age du User trouvé : #{user.age}"
			end
		end	
	end
	#private

	# def encrypt(string_to_encrypt)
   # return "##ENCRYPTED##"
  	#end

end

binding.pry
puts "end of file"
