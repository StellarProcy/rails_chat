class Admin < ApplicationRecord
  has_secure_password

  validates :email, presence:true, uniqueness:true, email: true
  validates :password, presence: true, length: { minimum: 6 }

  state_machine initial: :active do
    state :active
    state :deleted

    event :del do
      transition from: :active, to: :deleted, if: :active?
    end

    event :activate do
      transition from: :deleted, to: :active, if: :deleted?
    end
  end
end
