SAMPLE_USERS =[
  {email: 'user@example.com',
   password: 'password1',
   password_confirmation: 'password1'},
  {email: 'fred@example.com',
   password: 'password2',
   password_confirmation: 'password2'},
  {email: 'sofie@example.com',
   password: 'password3',
   password_confirmation: 'password3'},
  {email: 'noir@example.com',
   password: 'password4',
   password_confirmation: 'password4'},
  {email: 'artemis@example.com',
   password: 'password5',
   password_confirmation: 'password5'}
]

SAMPLE_USERS.each do |user|
  unless User.exists?(email: user[:email])
    User.create!(**user)
  end
end
