class Group <ActiveRecord::Base
    has_many :tasks

    # def self.all
    #     rows = DB.execute("SELECT * FROM groups")
    #     rows.map do |rows|
    #         self.new(row)
    #     end
    # end

    # def self.find_by_name(name)
    #     sql = "SELECT * FROM groups WHERE name = ?"
    #     result  = DB[:conn].execute(sql, name)[0]
    #     Group.new(result[0], result[1])
    # end
end