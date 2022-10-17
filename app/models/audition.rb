class Audition < ActiveRecord::Base
    belongs_to :role

    def call_back
        self.update(hire: true)
    end
  
end