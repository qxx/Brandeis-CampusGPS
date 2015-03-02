require 'digest/sha2'
class Admin < ActiveRecord::Base
	validates :name, :presence => true, :uniqueness => true
	validates :password, :confirmation => true
	attr_accessor :password_confirmation
	attr_reader :password
	validate :password_must_be_present
	after_destroy :ensure_an_admin_remains

	def Admin.encrypt_password(password, salt)
		Digest::SHA2.hexdigest(password + "wibble" + salt)
	end
	def generate_salt
		self.salt = self.object_id.to_s + rand.to_s
	end
	def password_must_be_present
		errors.add(:password, "Missing password") unless hashed_password.present?
	end
	def password=(password)
		@password = password
		if password.present?
			generate_salt
			self.hashed_password = self.class.encrypt_password(password, salt)
		end
	end

	def Admin.authenticate(name, password)
		if admin = find_by_name(name)
			if admin.hashed_password == encrypt_password(password, admin.salt)
				admin
			end
		end
	end
	def ensure_an_admin_remains
		if User.count.zero?
			raise "Can't delete last user"
		end
	end
end
