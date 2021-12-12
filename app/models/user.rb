class User < ActiveRecord::Base
    has_many :tasks
    has_many :groups, through: :tasks
    
    def self.get_tasks(id, group_id)
        user = self.find(id)
        group = Group.find(group_id)
        tasks = group.tasks.where(user_id: user.id)
    end


end