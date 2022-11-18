class Audition < ActiveRecord::Base
  belongs_to :role

  def callback
     self.hired = true
    self.save
  end
end