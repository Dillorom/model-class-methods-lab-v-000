class Classification < ActiveRecord::Base
  has_many :boat_classifications
  has_many :boats, through: :boat_classifications

  def self.my_all
     self.all
  end

  def longest
    joins(:boat).where(length: :asc).limit(1)
  end
end
