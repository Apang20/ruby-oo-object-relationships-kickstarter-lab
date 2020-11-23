class Backer
attr_reader :name

def initialize(name)
    @name = name
    @backer = []
end 

def back_project(project)
ProjectBacker.new(project, self)
end 

def backed_projects 
    #We want an array of projects associated with THIS backer/instance
   project_backers =  ProjectBacker.all.select do |project_backer|
        project_backer.backer == self 
       
end 
   project_backers.map do | pb |
    pb.project 
end 
end 
end 

#backers have many projects 