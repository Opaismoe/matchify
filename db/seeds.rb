User.destroy_all
Match.destroy_all

stu1 = User.create!(email: "stu1@mail.com", password: "123456")
stu2 = User.create!(email: "stu2@mail.com", password: "123456")
stu3 = User.create!(email: "stu3@mail.com", password: "123456")
stu4 = User.create!(email: "stu4@mail.com", password: "123456")
stu5 = User.create!(email: "stu5@mail.com", password: "123456")
stu6 = User.create!(email: "stu6@mail.com", password: "123456")
stu7 = User.create!(email: "stu7@mail.com", password: "123456")
stu8 = User.create!(email: "stu8@mail.com", password: "123456")
admin = User.create!(email: "admin@mail.com", password: "123456", admin: true)

match1 = Match.create!(group_id: 1, user: stu1)
match2 = Match.create!(group_id: 1, user: stu2)
match3 = Match.create!(group_id: 2, user: stu3)
match4 = Match.create!(group_id: 2, user: stu4)
match5 = Match.create!(group_id: 3, user: stu5)
match6 = Match.create!(group_id: 3, user: stu6)
match7 = Match.create!(group_id: 4, user: stu7)
match8 = Match.create!(group_id: 4, user: stu8)
