class GuestProfile < ActiveRecord::Base
  can_be_detail :user

  def name
    "Guest"
  end

  def task_limit
    10
  end

  def can_share_task?(task)
    false
  end

  def send_password_reset
  end
end
