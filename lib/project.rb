class Project 
attr_accessor 
attr_reader :title 


def initialize(title)
    @title = title
end 

def add_backer(backer)
ProjectBacker.new(self, backer)
end 

def backers #array of backers associated with THIS project instance 
    pb = ProjectBacker.all.select do |project_backer|
        project_backer.project == self 
end 
pb.map do | item |
    item.backer
end 
end

end 

#projects have many backers 