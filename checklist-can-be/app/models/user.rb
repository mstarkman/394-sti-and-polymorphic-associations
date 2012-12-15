class User < ActiveRecord::Base
  attr_accessible :can_be_type
  has_many :tasks, dependent: :destroy
  can_be :guest, :member do
    add_details_model :guest, :guest_profile
    add_details_model :member, :member_profile
  end

  delegate :name, :can_share_task?, :send_password_reset, to: :details
end
