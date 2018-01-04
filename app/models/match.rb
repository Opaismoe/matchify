class Match < ApplicationRecord
  belongs_to :user

  validates :group_id, :user_id, presence: true


  def self.previous_matches(date)
    where(date < DateTime.now.beginning_of_day)
  end

  def self.all_students
    @student = User.where(admin:false)
    @all_students = []
    @student.each do |student|
      @all_students << student.id
    end
      @all_students
  end


end
