class Patient
  attr_reader :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment
    Appointment.new(date, self, doctor)
  end
  
  def self.all
    @@all
  end
  
  def appointments
    Appointment.all.select{|a| a.patient == self}
  end
  
  def appointments
    appointments.map{|a| a.doctor}
  end
  
  
  
end
  
  
  
  