@user = User.create(email: "test@test.com",
                    password: "asdfasdf",
                    password_confirmation: "asdfasdf",
                    first_name: "Jon",
                    last_name: "Snow",
                    phone: "4322386131")

puts "1 User created"

AdminUser.create(email: "admin@test.com",
                  password: "asdfasdf",
                  password_confirmation: "asdfasdf",
                  first_name: "Admin",
                  last_name: "User",
                  phone: "4322386131")

puts "1 Admin User created"


100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content Donec tincidunt, tortor id pharetra cursus, purus arcu venenatis lorem, sed gravida ex nunc at dui. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed magna dolor, imperdiet ac venenatis at, pulvinar non orci. Aenean tempus pellentesque finibus. Sed sed consequat mauris. Nunc non imperdiet ante. Vivamus fermentum mollis nibh. Curabitur pulvinar orci a sem venenatis, semper consequat massa bibendum. Etiam feugiat vulputate diam, id faucibus ipsum rhoncus eu. Duis tristique orci ut semper dapibus. Maecenas tristique dictum sodales. Nulla dui nunc, gravida id augue vel, consequat auctor justo. Donec iaculis odio vel ipsum dictum aliquam. Donec sit amet enim velit. Fusce et lacinia massa. Proin a dui sed justo auctor aliquam tristique nec enim.", user_id: @user.id, overtime_request: 2.5)
end

puts "100 posts have been create."


AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 20.days))


puts "3 audit logs have been create."
