module UserStateMachine
  extend ActiveSupport::Concern

  included do
    state_machine initial: :active do
      state :active
      state :inactive
      state :banned

      event :activate do
        transition %i[inactive banned] => :active
      end

      event :deactivate do
        transition %i[active banned] => :inactive
      end

      event :ban do
        transition %i[active inactive] => :banned
      end

      scope :active, -> { where(state: :active) }
      scope :inactive, -> { where(state: :inactive) }
      scope :banned, -> { where(state: :banned) }
    end
  end
end
