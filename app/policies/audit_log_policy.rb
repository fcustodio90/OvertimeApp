class AuditLogPolicy < ApplicationPolicy

  def index?
    # TODO REFACTOR
    return true if admin?
  end

  def confirm?
    record.user_id == user.id
  end

  private

    def admin?
      types.include?(user.type)
    end
end
