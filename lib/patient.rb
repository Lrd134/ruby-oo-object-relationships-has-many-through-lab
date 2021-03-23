require 'pry'
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
    def appointments
        Appointment.all.select { |obj| obj.patient.name == self.name }
    end
    def self.all
        @@all
    end
end