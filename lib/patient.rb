class Patient
  attr_accessor :appointments, :doctors
  attr_reader :name

  def initialize(name)
    @name = name
    @appointments = []
    @doctors = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

  def doctors
    self.appointments.each {|appointment| @doctors << appointment.doctor}
    @doctors
  end
end
