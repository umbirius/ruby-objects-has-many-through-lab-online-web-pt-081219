class Doctor 
  
  attr_reader :name 
  
  @@all = []
    
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all
    @@all 
  end 
  
  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end 
  
  def appointments 
    Appointment.all.select {|apt| apt.doctor == self} 
  end 
  
  def patients 
    self.appointments.map {|appointment| appointment.patient} 
  end 
  
  
end 
  