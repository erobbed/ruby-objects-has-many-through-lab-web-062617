class Doctor
  attr_accessor :appointments, :patients
  attr_reader :name
  def initialize(name)
    @name = name
    @appointments = []
    @patients = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end

  def patients
    self.appointments.each {|appointment| @patients << appointment.patient}
    @patients
  end

end
