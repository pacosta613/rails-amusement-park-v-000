class User < ActiveRecord::Base
  has_many :rides
<<<<<<< HEAD
  has_many :attractions, :through => :rides

  def mood
    if self.happiness && self.nausea
      mood = self.happiness - self.nausea
      mood > 0 ? "happy" : "sad"
    end
  end

end
=======
  has_many :attractions, through: :rides

  def mood
    if self.happiness > self.nausea
      "happy"
    else
      "sad"
    end
  end

end
>>>>>>> cddbabe1fad9edc84876235d7731947c904679b9
