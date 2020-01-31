class Doctor 

    attr_accessor :name

    @@all = [] 

    def initialize (name)
        @name = name
        # @appointments 
        # @patients 
        # you wouldnt ever store in these variables because one ONE SOURCE OF TRUTH 
        @@all << self
    end

    def appointments 
        Appointment.all.select {|app| app.doctor == self }
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

    def patients 
        self.appointments.map {|app| app.patient}
    end

    def self.all 
        @@all
    end




end