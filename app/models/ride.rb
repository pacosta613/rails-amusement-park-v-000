class Ride < ActiveRecord::Base
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
      user.tickets -= attraction.tickets
      user.nausea += attraction.nausea_rating
      user.happiness += attraction.happiness_rating
      user.save
      park << "Thanks for riding the #{self.attraction.name}!"
    end
    park.join(" ")
  end

end