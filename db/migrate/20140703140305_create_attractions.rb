class CreateAttractions < ActiveRecord::Migration
  def change
    create_table :attractions do |t|
      t.string :name
<<<<<<< HEAD
      t.integer :tickets
      t.integer :nausea_rating
      t.integer :happiness_rating
      t.integer :min_height
    end
  end
end
=======
      t.integer :tickets  
      t.integer :nausea_rating  
      t.integer :happiness_rating  
      t.integer :min_height 

      t.timestamps null: false
    end 
  end

end
>>>>>>> cddbabe1fad9edc84876235d7731947c904679b9
