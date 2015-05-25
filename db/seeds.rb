require 'faker'

5.times do
  Task.create(
    task: Faker::Lorem.sentence
    )
end

  # end

# 100.times do
#   StudentsTeachers.create(
#       :student_id => Student.pluck(:id).sample,
#       :teacher_id => Teacher.pluck(:id).sample
#     )
# end

      # user = User.create :username => Faker::Name.name,
      #                    :email => Faker::Internet.email,
      #                    :password => "password",
      #                    :password_confirmation => "password"