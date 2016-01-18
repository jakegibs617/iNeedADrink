class Drink < ActiveRecord::Base
  validates :title,
    presence: true,
    uniqueness: true,
    length: { minimum: 3 }

  def self.search(query)
    where("title ilike ? OR description ilike ? OR ingredients ilike ? OR season ilike ? OR instructions ilike ?",
    "%#{query}%",
    "%#{query}%",
    "%#{query}%",
    "%#{query}%",
    "%#{query}%")
  end

  SEASONS = ["Winter", "Summer", "Spring", "Fall"]

  class << self
    def featured
      where(featured: true)
    end
  end
end
