unless Admin.exists?(email: 'admin@example.com')
  Admin.create!(email: 'admin@example.com',
                password: 'password',
                password_confirmation: 'password')
end
