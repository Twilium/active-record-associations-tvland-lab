class Show < ActiveRecord::Base
    has_many :characters
    belongs_to :network

    def actors_list
        actors = []
        actors << self.characters[0].actor.full_name
        actors
    end  
end