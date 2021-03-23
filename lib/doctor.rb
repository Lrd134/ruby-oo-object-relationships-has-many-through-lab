class Doctor
    attr_reader :name, :patient, :appointment
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end
    def appointments
        Appointment.all.select { | arr | arr.doctor.name == self.name}
    end
    def patients
        patients_found = []
        Appointment.all.each do |arr |
            if arr.doctor.name == self.name
               
                patients_found << arr.patient
            end
        end
    end
    def self.all
        @@all
    end
end