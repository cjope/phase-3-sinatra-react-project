class User < ActiveRecord::Base
    has_many :tasks
    has_many :groups, through: :tasks
end