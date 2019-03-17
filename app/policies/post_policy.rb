class PostPolicy < ApplicationPolicy

  def update?
    # case 1 = User of record || # case 2 = admin user
    record.user_id == user.id || types.include?(user.type)
  end

end
