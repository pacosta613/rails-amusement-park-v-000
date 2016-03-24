class Ride < ActiveRecord::Base
<<<<<<< HEAD
  belongs_to :attraction 
  belongs_to :user 

  def take_ride
    if attraction.min_height > user.height && attraction.tickets > user.tickets
      "Sorry. You do not have enough tickets the #{attraction.name}. You are not tall enough to ride the #{attraction.name}."
    elsif attraction.tickets > user.tickets
      "Sorry. You do not have enough tickets the #{attraction.name}."
    elsif attraction.min_height > user.height 
      "Sorry. You are not tall enough to ride the #{attraction.name}."
    else
=======
  belongs_to :attraction
  belongs_to :user

  def take_ride
    park = ["Sorry."]
    if user.tickets < attraction.tickets
      park << "You do not have enough tickets the #{self.attraction.name}."
    end
    if user.height < attraction.min_height
      park << "You are not tall enough to ride the #{self.attraction.name}."
    end
    if user.tickets >= attraction.tickets && user.height >= attraction.min_height
>>>>>>> cddbabe1fad9edc84876235d7731947c904679b9
      user.tickets -= attraction.tickets
      user.nausea += attraction.nausea_rating
      user.happiness += attraction.happiness_rating
      user.save
<<<<<<< HEAD
      "Thanks for riding the #{attraction.name}!"
    end
  end

end
=======
      park << "Thanks for riding the #{self.attraction.name}!"
    end
    park.join(" ")
  end

end
>>>>>>> cddbabe1fad9edc84876235d7731947c904679b9
