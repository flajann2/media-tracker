unless User.exists?(email: 'user@example.com')
  User.create!(email: 'user@example.com',
               password: 'password',
               password_confirmation: 'password')
end
puts "ran user seeds"
