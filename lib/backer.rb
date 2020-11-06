require "pry"

# class Backer 
#     attr_accessor :name
#     @@backed = []
#     def initialize(name)
#         @name = name
#     end 

#     def back_project(project)
#         n = ProjectBacker.new(project, self)
#         @@backed << project
#         project.backers << self 
#     end 

#     def backed_projects
#         @@backed
#     end 

#     # def back_project(project)
#     #     ProjectBacker.new(project, self)
#     #     @backed_projects << project
#     #     project.backers << self
#     # end


# end 

class Backer

    attr_accessor :name, :backed_projects

    def initialize(name)
      @name = name
      @backed_projects = []
    end

    def back_project(project)
        ProjectBacker.new(project, self)
        @backed_projects << project
        project.backers << self
    end
  end