module ApplicationHelper

	def welcome_user
		if !current_user.nil?
			current_user.user_name
		else
			"no user"
		end
	end		
end
