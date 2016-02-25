class Job < ActiveRecord::Base
  belongs_to :user

  validates :title, presence: true, uniqueness: true

  def self.search(query)
    where("title like ?", "%#{query}%")  
    # where("location like?", "%#{query}%")
    # where("current_school like?", "%#{query}%")
  end
end
