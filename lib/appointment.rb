class Appointment
  attr_reader :date, :patient, :doctor
  
  @@all = []
  
  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end
  
  def self.all
    @@all
  end
    
  def patient
    Patient.all.select{|p| p.appointment == self}
    
  end
  
  def doctor
    Doctor.all.select{|d| d.appointment == self}
    
  end
    
  end