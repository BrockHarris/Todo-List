class Todo < ActiveRecord::Base
  attr_accessible :name
	
	def self.search(search)
  	if search
    	where 'name LIKE ?', "%#{search}%"
  	else
    	scoped
  	end
	end
end
