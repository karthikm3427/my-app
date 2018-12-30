class School < ApplicationRecord
  validates :is_active, acceptance: { message: 'must be true' }
#  validates :name, exclusion: { in: %w(kishore venkat), message: "%{value} is reserved." }
#  validates :name, inclusion: { in: %w(kishore venkat), message: "%{value} is not in the included list." }
#  validates :name, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }

#    validates :started_on, numericality: true

#   validates :name, uniqueness: true
#    validates :name, uniqueness: { scope: :started_on, message: "should happen once per year" }
      validates :name, uniqueness: { case_sensitive: false }


  def set_name(str)
    self.name = str
  end

end
