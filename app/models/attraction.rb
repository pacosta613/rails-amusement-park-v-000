class Attraction < ActiveRecord::Base
  has_many :rides
<<<<<<< HEAD
  has_many :users, :through => :rides
end
=======
  has_many :users, through: :rides
end
>>>>>>> cddbabe1fad9edc84876235d7731947c904679b9
