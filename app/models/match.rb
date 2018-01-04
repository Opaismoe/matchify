class Match < ApplicationRecord
  require 'date'
  belongs_to :user

  validates :group_id, :user_id, presence: true
  
  # def self.previous_matches(date)
  #   where(date < DateTime.now.beginning_of_day)
  # end

  def self.group_id
    @group_id = rand(1..2000)
  end

  def self.admin?
    @student = User.where(admin:false)
  end

  def self.all_students
    admin?
    @all_students = []
    @student.each do |student|
      @all_students << student.id
    end
    @all_students
  end

  def self.pairup
    group_id
    all_students
    pairs = []
    max_days = @all_students.length - 1
    @match_student = @all_students.clone

    max_days.times do |index|
      student1 = @match_student[index+1]
      student2 = all_students[0]
      Match.create!(user_id: student1, group_id: group_id, date: Date.today)
      Match.create!(user_id: student2, group_id: group_id, date: Date.today)
      @group_id += 1
    end
  end

end
