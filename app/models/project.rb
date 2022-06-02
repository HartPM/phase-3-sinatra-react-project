class Project < ActiveRecord::Base
    belongs_to :car

    #def sort_by_car
     #   Project.all.sort_by(:car_id)
    #end

end