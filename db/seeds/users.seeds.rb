SAMPLE_USERS =[
  [{email: 'user@example.com',
    password: 'password1',
    password_confirmation: 'password1'}
  ],

  [{email: 'fred@example.com',
    password: 'password2',
    password_confirmation: 'password2'},

   [{title: "2001: A Space Odyssey",
     description: "Greatest SF movie ever.",
     metadata: %[{published: 1968, director: "Stanley Kubrick", author: "Authur C Clarke"}],
     uri: "file:/media/alveric/torrent-alpha/2001 A Space Odyssey.mp4",
     media_type: "film"
    },

    {title: "The Mass Distribution of Stellar-Mass Black Holes",
     description: "Astrophysics and Cosmology",
     metadata: %[{published: 2014, resolution: "720p", origin:  "BluRay"}],
     uri: "file:/home/alveric/Dropbox/Books/Physics/The Mass Distribution of Stellar-Mass Black Holes 1011.1459.pdf",
     media_type: "book"
    }
   ]],

  [{email: 'sofie@example.com',
    password: 'password3',
    password_confirmation: 'password3'
   }],

  {email: 'noir@example.com',
   password: 'password4',
   password_confirmation: 'password4'
  },

  {email: 'artemis@example.com',
   password: 'password5',
   password_confirmation: 'password5'
  }
]

SAMPLE_USERS.each do |user, media_list|
  unless User.exists?(email: user[:email])
    u = User.create!(**user)

    unless media_list.nil?
      media_list.each do |medium|
        u.create_medium!(**medium)
      end
    end
  end
end
