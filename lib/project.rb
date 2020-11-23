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
    pb = ProjectBacker.all.select do |project_backer| #iterate over the joiner Class 
        project_backer.project == self                #only want the self project
end 
pb.map do | item | #we iterate again in the nested array to return the backers associated...
    item.backer    #with the self project
end 
end

end 

#projects have many backers 