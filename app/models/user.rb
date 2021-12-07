class User < ActiveRecord::Base
    has_many :groups
    has_many :tasks, through: :group
end