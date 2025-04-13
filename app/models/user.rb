class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :lockable
  after_initialize :set_default_role, if: :new_record?
  def set_default_role
    self.role ||= :user
  end
  validates :username, presence: true, uniqueness: true

end
