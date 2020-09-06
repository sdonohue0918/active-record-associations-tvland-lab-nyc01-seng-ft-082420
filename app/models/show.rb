class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

    def actors_list
        characters.select {|character| character.actor.list_full_name}
        #actor.all.map {|actor| actor.list_full_name}

  


    end
end