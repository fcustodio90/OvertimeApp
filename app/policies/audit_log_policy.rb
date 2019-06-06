class AuditLogPolicy < ApplicationPolicy

  def index?
    return true if admin?
  end

  private

    def admin?
      types.include?(user.type)
    end
end
