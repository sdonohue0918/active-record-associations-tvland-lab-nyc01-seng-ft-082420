class Actor < ActiveRecord::Base
  
  has_many :characters
  has_many :shows, through: :characters


    def list_full_name
        self.first_name + " " + self.last_name
  
    end

    def list_shows_characters
        quick_imdb = [] 
        quick imdb << characters.select{|character| character.name}
        quick imdb << characters.select{|character| character.show.name}
        quick imdb.flatten
        quick imdb
    end
end