class User < ActiveRecord::Base
  attr_accessible :Email, :Name, :Password

	def self.search(search)
 	find(:all, :conditions => ['name LIKE ? OR email LIKE ?', search, search])
 	end

  

end
