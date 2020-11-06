# require "pry"
# class Project 
#     attr_accessor :title
#     @@all = []
#     def initialize(title)
#         @title = title
#         @@all << self 
#     end 
     
#     def self.all
#         @@all
#     end

#     def add_backer(backer)
#         ProjectBacker.new(self, backer)
#     end
    
#     def backers
        
#     end 
# end 

class Project
    attr_accessor :title, :backers

    def initialize(title)
        @title = title
        @backers = []
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
        @backers << backer
        backer.backed_projects << self
    end
  end