module AutoPostSystem
  module Account
    class Facebook
      def self.create
        client = AutoPostSystem::Agent::Facebook.new
        client.login
        # AutoPostSystem::Agent::Facebook.new して @client 使いたい
        
      end
    end
  end
end