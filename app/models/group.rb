class Group <ActiveRecord::Base
    has_many :tasks
    has_many :users, through: :tasks

    def self.find_by_body(body)
        self.find(body: body)
    end
end