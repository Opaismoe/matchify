class Match < ApplicationRecord
  belongs_to :user

  validates :group_id, :user_id, presence: true


  def self.previous_matches(date)
    where(date < DateTime.now.beginning_of_day)
end

  
end
