module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connect
      self.current_user = find_verified_user
    end

    private

    def find_verified_user
      if verified_user = User.find_by(id: cookies.signed['user.id'])
        byebug
        verified_user
        puts '================='
        puts 'User is verified!'
        puts '================='
      else
        byebug
        reject_unauthorized_connection
        puts '------------------------'
        puts 'NO AUTHORIZED USER'
        puts '------------------------'
      end
    end
  end
end
