@user = User.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "John", last_name: "Snow")

puts "1 user created"

AdminUser.create(email: "myadmin@asdf.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "JoAdmin", last_name: "shmo")

puts "1 AdminUser created"

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rational content", user_id: @user.id)
end

puts "100 posts have been created"

