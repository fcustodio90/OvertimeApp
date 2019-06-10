class StaticController < ApplicationController
  def homepage
    if is_admin?
      @pending_approvals = Post.submitted
      @recent_audit_items = AuditLog.last(10)
    else
      #something else luls
    end
  end
end
