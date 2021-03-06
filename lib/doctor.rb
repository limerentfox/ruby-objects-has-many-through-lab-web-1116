class Doctor
    attr_accessor :name, :appointments
    def initialize(name)
        @name = name
        @appointments = []
    end

    def add_appointment(appointment)
        @appointments << appointment
    end

    def appointments
        @appointments
      end

    def patients
        appointments.collect(&:patient)
    end
end
