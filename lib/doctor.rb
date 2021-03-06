class Doctor
  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    # appointment.doctor = self
  end

  def appointments
    @appointments
      # Appointment.all.select do |appointment|
      # appointment.doctor == self
    # end
  end

  def patients
    @appointments.collect do |appointment|
      appointment.patient
    end
  end

end
