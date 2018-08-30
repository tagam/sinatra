module AutoPostSystem
  class News
    def self.create
      AutoPostSystem::Account::Facebook.create
      AutoPostSystem::Account::Twitter.create
      AutoPostSystem::Account::Instagram.create
    end
  end
end
