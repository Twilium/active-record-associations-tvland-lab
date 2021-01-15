require 'pry'
class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        full_name = self.first_name + " " + self.last_name
        full_name
    end

    def list_roles
        # binding.pry
        roles = []
        roles << self.characters[0].name
        roles << self.shows[0].name
        roles.join(" - ")
    end
end