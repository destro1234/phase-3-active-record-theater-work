class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        self.auditions.map do |audition|
            audition[:actor]
        end
    end

    def locations
        self.auditions.map {|audition| audition[:location]}
    end

    def lead
        lead = self.auditions.find_by(hired: true).actor
        if lead
            lead
        else
            "no actor has been hired for this role"
        end
    end

    def understudy
       if self.auditions.where(hired: true).second
        self.auditions.where(hired: true).second
       else
        "no actor has been hired for this role"
       end
    end

end