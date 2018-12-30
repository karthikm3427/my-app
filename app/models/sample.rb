class Sample < ApplicationRecord

  validates :name, presence: true, uniqueness: true


  def set_name(str)
    self.name = str
  end


end
