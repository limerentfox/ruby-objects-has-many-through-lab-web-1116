class Patient
    attr_accessor :name, :appointments
    def initialize(name)
        @name = name
        @appointments = []
    end

    def appointments
        @appointments
    end

    def add_appointment(appointment)
        @appointments << appointment
        appointment.patient = self
    end

    def doctors
        appointments.collect(&:doctor).flatten.uniq
    end
end
