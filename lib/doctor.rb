class Doctor 
  
  def attr_reader :name 
  
  @@all = []
    
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all
    @@all 
  end 
  
  def new_appointment(patient, date)
    Appointment.new(self, patient, date)
  end 
  
  def appointments 
    Appointment.all.select {|apt| apt.doctor == self} 
  end 
  
  def pateints 
    self.appointments.map {|appointment| appointment.patient} 
  end 
  
  
end 
  