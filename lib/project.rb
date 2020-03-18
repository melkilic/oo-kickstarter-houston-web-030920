require 'pry'

class Project
    
    @@all = []

    attr_accessor :title
    attr_reader :backers
    def initialize(title)
        @title = title
        @backers = []
        @@all << self
    end

    def add_backer(backer)
        @backers << backer
        backer.backed_projects << self
    end

    def self.all
        @@all
    end


end

# new_company = Project.new("new")
# operation = Project.new("operation")

