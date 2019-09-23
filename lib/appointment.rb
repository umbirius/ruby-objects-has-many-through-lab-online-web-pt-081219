class Appointment
  
  attr_accessor 
  attr_reader :date 
  
  @@all = []
  
  def initialize(date)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
end 
