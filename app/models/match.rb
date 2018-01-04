class Match < ApplicationRecord
  belongs_to :user

  validates :group_id, :user_id, presence: true


  #def self.previous_matches(date)
  #  where(date < DateTime.now.beginning_of_day)
  #end

  #def self.set_date
  #  DateTime.now.to_date
  #end

#def self.match_for_today?
#  if Match.last == nil
#    return false
#  else
#    date = Match.last.date
#    return date == set_date
#  end
#end

#def self.create_matches
#  matches = Profile.pairing
#  matches.each do |match|
#    group_id = match.fetch(0)
#    user_id = match.fetch(1)
#    date = set_date
#    Match.create(group_id: group_id, user_id: user_id, date: date )
#  end
#end
#end


  def self.all_students
    @student = User.where(admin:false)
    @all_students = []
    @student.each do |student|
      @all_students << student.id
    end
      @all_students
  end


  def self.shuffle_student_ids
     all_students
     @shuffled_students_ids = @all_students.shuffle()
     return @shuffled_students_ids
   end
  
    all_students
    @shuffled_students_ids = @all_students.shuffle()
    return @shuffled_students_ids #used for create matches.
  end

  def self.create_matches(day)
    shuffle_student_ids
    id = []
    while @shuffled_students_ids.length > 1 do
      2.times{ id << @shuffled_students_ids.slice!(0) }
      Match.create(group_id: id[0], user_id: id[1], date: day)
      2.times{ id.delete_at(0) }
    end

  end

end
