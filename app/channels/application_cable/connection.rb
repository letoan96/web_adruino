module ApplicationCable
  class Connection < ActionCable::Connection::Base
  	identified_by :current_user
  	attr_reader :current_user
    def connect
      self.current_user = find_verified_user
    end

    private
      def find_verified_user
        if current_user = User.find_by(id: cookies.signed[:user_id])
          current_user
        else
          current_user = User.find_by(:id => 2)
        end
      end
  end
end
