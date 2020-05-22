class Patient
  attr_reader :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end
  
  def self.all
    @@all
  end
  
  def appointment
    Appointment.all.select{|a| a.patient == self}
  end
  
  def doctors
    appointment.select{|a| a.doctor}
  end
  
  
  
end
  
  
  
  