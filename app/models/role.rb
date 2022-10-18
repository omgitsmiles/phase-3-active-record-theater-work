class Role < ActiveRecord::Base
    has_many :auditions

    def actors 
        auditions.map { |audition| audition[:name] }
            # OR
            # auditions.pluck(:actor)
    end

    def locations
        auditions.map { |audition| audition[:location] }
            # OR
            # auditions.pluck(:location)
    end

    def lead
       audition = auditions.find { |audition| audition.hired }
       if audition
            audition
       else
        "no actor has been hired for this role"
       end
    end

    def understudy
        auditions = auditions.find { |audition| audition.hired }
        if audition[1]
            audition[1]
        else
            "no actor has been hired for understudy for this role"
        end
    end

end