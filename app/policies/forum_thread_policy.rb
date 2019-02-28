class ForumThreadPolicy < ApplicationPolicy
	def edit?
		user.id == record.user.id || user.admin?
	end

	def update?
		user.id == record.user.id || user.admin?
	end

	def destroy?
		user.admin?
	end

	def pinit?
		user.admin?
	end

	def unpin?
		user.admin?
	end
end