require 'pry'
class Backer
    @@all = []
   
    attr_accessor :name
    attr_reader :backed_projects
    def initialize(name)
        @name = name
        @backed_projects = []
        @@all << self
    end

    def back_project(project)
        @backed_projects << project
        project.backers << self
    end
    def self.all
        @@all
    end
end

# melike = Backer.new("melike")
# angelo = Backer.new("angelo")
# josh = Backer.new("josh")
