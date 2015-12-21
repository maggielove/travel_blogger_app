# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# a = User.create(username: 'sirjames', password: 'password', password_confirmation: 'password', byline_name: 'James Doe', bio: 'Traveling the  world, loving life')
#
# a.image.create = (:asset => ActionDispatch::Http::UploadFile.new("baldwin_prof.jpg"))
#
# b = User.create(username: 'johnny3000', password: 'password', password_confirmation: 'password', byline_name: 'John Doe', bio: 'Searching for the world\'s best cheese')
#
# c = User.create(username: 'paperback_writer', password: 'password', password_confirmation: 'password', byline_name: 'Amelia Gilbert', bio: 'Around the world in 80 days')
#
#
# a.posts.create(title: 'London Calling', byline: a.byline_name, body: 'London test post')
#
# a.posts.create(title: 'Vacationing in Rome', byline: a.byline_name, body: 'Eat pray loving it. Mostly eating.')
#
# b.posts.create(title:'Limoges Post', byline: b.byline_name, body: 'Sample Limoges post body.')
#
# b.posts.create(title: 'Bordeaux Post', byline: b.byline_name, body: 'Sample Bordeaux post.')
#
# c.posts.create(title: 'Amsterdam Post', byline: c.byline_name, body: 'Went to the Van Gogh Museum. It was pretty cool.')

d = User.create(username: 'johnny3000', password: 'password', password_confirmation: 'password', byline_name: 'John Smith', bio: 'Traveling the  world, loving life')

 d.posts.create(title: 'Midnight in Paris', byline: d.byline_name, body:
   'Lorem ipsum dolor sit amet, quo munere soleat corrumpit id, mundi iudico regione eu vim, ex errem alienum nam. Ius ei magna molestie rationibus, ex has feugiat salutandi, in vel hendrerit prodesset necessitatibus. Vix meis pertinacia ut, ornatus constituto omittantur ei eos. In sit vide consulatu. Ei usu omittam petentium expetenda, diam mutat mazim ut mei.

   Eum modo suscipit ex, aperiri oblique delenit et mel, nec probo iracundia interpretaris ut. Aliquip fabulas molestiae eos in, pro ad wisi legere vituperatoribus, intellegat necessitatibus ut pro. Nam in nostro utroque. In nec verear dissentias inciderint, sint dicit eos an. Alii graeci eligendi sea in, duo everti vivendo cu. Saperet intellegam vim et. Pro eu error singulis.'
   )

   d.posts.create(title: 'Surrealist Paris', byline: d.byline_name, body:
     'Lorem ipsum dolor sit amet, quo munere soleat corrumpit id, mundi iudico regione eu vim, ex errem alienum nam. Ius ei magna molestie rationibus, ex has feugiat salutandi, in vel hendrerit prodesset necessitatibus. Vix meis pertinacia ut, ornatus constituto omittantur ei eos. In sit vide consulatu. Ei usu omittam petentium expetenda, diam mutat mazim ut mei.

     Eum modo suscipit ex, aperiri oblique delenit et mel, nec probo iracundia interpretaris ut. Aliquip fabulas molestiae eos in, pro ad wisi legere vituperatoribus, intellegat necessitatibus ut pro. Nam in nostro utroque. In nec verear dissentias inciderint, sint dicit eos an. Alii graeci eligendi sea in, duo everti vivendo cu. Saperet intellegam vim et. Pro eu error singulis.'
     )

     d.posts.create(title: 'Following in Elaine Dundy\'s Footsteps', byline: d.byline_name, body:
       'Lorem ipsum dolor sit amet, quo munere soleat corrumpit id, mundi iudico regione eu vim, ex errem alienum nam. Ius ei magna molestie rationibus, ex has feugiat salutandi, in vel hendrerit prodesset necessitatibus. Vix meis pertinacia ut, ornatus constituto omittantur ei eos. In sit vide consulatu. Ei usu omittam petentium expetenda, diam mutat mazim ut mei.

       Eum modo suscipit ex, aperiri oblique delenit et mel, nec probo iracundia interpretaris ut. Aliquip fabulas molestiae eos in, pro ad wisi legere vituperatoribus, intellegat necessitatibus ut pro. Nam in nostro utroque. In nec verear dissentias inciderint, sint dicit eos an. Alii graeci eligendi sea in, duo everti vivendo cu. Saperet intellegam vim et. Pro eu error singulis.'
       )

    d.posts.create(title: 'Anarchists in Berlin', byline: d.byline_name, body:
         'Lorem ipsum dolor sit amet, quo munere soleat corrumpit id, mundi iudico regione eu vim, ex errem alienum nam. Ius ei magna molestie rationibus, ex has feugiat salutandi, in vel hendrerit prodesset necessitatibus. Vix meis pertinacia ut, ornatus constituto omittantur ei eos. In sit vide consulatu. Ei usu omittam petentium expetenda, diam mutat mazim ut mei.

         Eum modo suscipit ex, aperiri oblique delenit et mel, nec probo iracundia interpretaris ut. Aliquip fabulas molestiae eos in, pro ad wisi legere vituperatoribus, intellegat necessitatibus ut pro. Nam in nostro utroque. In nec verear dissentias inciderint, sint dicit eos an. Alii graeci eligendi sea in, duo everti vivendo cu. Saperet intellegam vim et. Pro eu error singulis.'
         )



e = User.create(username: 'janed90', password: 'password', password_confirmation: 'password', byline_name: 'Jane Smith', bio: 'Getting lost, staying lost')

e.posts.create(title: 'Berlin Street Style', byline: e.byline_name, body:
  'Lorem ipsum dolor sit amet, quo munere soleat corrumpit id, mundi iudico regione eu vim, ex errem alienum nam. Ius ei magna molestie rationibus, ex has feugiat salutandi, in vel hendrerit prodesset necessitatibus. Vix meis pertinacia ut, ornatus constituto omittantur ei eos. In sit vide consulatu. Ei usu omittam petentium expetenda, diam mutat mazim ut mei.

  Eum modo suscipit ex, aperiri oblique delenit et mel, nec probo iracundia interpretaris ut. Aliquip fabulas molestiae eos in, pro ad wisi legere vituperatoribus, intellegat necessitatibus ut pro. Nam in nostro utroque. In nec verear dissentias inciderint, sint dicit eos an. Alii graeci eligendi sea in, duo everti vivendo cu. Saperet intellegam vim et. Pro eu error singulis.'
  )

  e.posts.create(title: 'Berlin Graffiti', byline: e.byline_name, body:
       'Lorem ipsum dolor sit amet, quo munere soleat corrumpit id, mundi iudico regione eu vim, ex errem alienum nam. Ius ei magna molestie rationibus, ex has feugiat salutandi, in vel hendrerit prodesset necessitatibus. Vix meis pertinacia ut, ornatus constituto omittantur ei eos. In sit vide consulatu. Ei usu omittam petentium expetenda, diam mutat mazim ut mei.

       Eum modo suscipit ex, aperiri oblique delenit et mel, nec probo iracundia interpretaris ut. Aliquip fabulas molestiae eos in, pro ad wisi legere vituperatoribus, intellegat necessitatibus ut pro. Nam in nostro utroque. In nec verear dissentias inciderint, sint dicit eos an. Alii graeci eligendi sea in, duo everti vivendo cu. Saperet intellegam vim et. Pro eu error singulis.'
       )

    e.posts.create(title: 'Contemporary Art Spots', byline: e.byline_name, body:
            'Lorem ipsum dolor sit amet, quo munere soleat corrumpit id, mundi iudico regione eu vim, ex errem alienum nam. Ius ei magna molestie rationibus, ex has feugiat salutandi, in vel hendrerit prodesset necessitatibus. Vix meis pertinacia ut, ornatus constituto omittantur ei eos. In sit vide consulatu. Ei usu omittam petentium expetenda, diam mutat mazim ut mei.

            Eum modo suscipit ex, aperiri oblique delenit et mel, nec probo iracundia interpretaris ut. Aliquip fabulas molestiae eos in, pro ad wisi legere vituperatoribus, intellegat necessitatibus ut pro. Nam in nostro utroque. In nec verear dissentias inciderint, sint dicit eos an. Alii graeci eligendi sea in, duo everti vivendo cu. Saperet intellegam vim et. Pro eu error singulis.'
            )

    e.posts.create(title: 'Biking Amsterdam', byline: e.byline_name, body:
      'Lorem ipsum dolor sit amet, quo munere soleat corrumpit id, mundi iudico regione eu vim, ex errem alienum nam. Ius ei magna molestie rationibus, ex has feugiat salutandi, in vel hendrerit prodesset necessitatibus. Vix meis pertinacia ut, ornatus constituto omittantur ei eos. In sit vide consulatu. Ei usu omittam petentium expetenda, diam mutat mazim ut mei.

      Eum modo suscipit ex, aperiri oblique delenit et mel, nec probo iracundia interpretaris ut. Aliquip fabulas molestiae eos in, pro ad wisi legere vituperatoribus, intellegat necessitatibus ut pro. Nam in nostro utroque. In nec verear dissentias inciderint, sint dicit eos an. Alii graeci eligendi sea in, duo everti vivendo cu. Saperet intellegam vim et. Pro eu error singulis.'
                    )

    e.posts.create(title: 'Visiting the Van Gogh Museum', byline: e.byline_name, body:
    'Lorem ipsum dolor sit amet, quo munere soleat corrumpit id, mundi iudico regione eu vim, ex errem alienum nam. Ius ei magna molestie rationibus, ex has feugiat salutandi, in vel hendrerit prodesset necessitatibus. Vix meis pertinacia ut, ornatus constituto omittantur ei eos. In sit vide consulatu. Ei usu omittam petentium expetenda, diam mutat mazim ut mei.

    Eum modo suscipit ex, aperiri oblique delenit et mel, nec probo iracundia interpretaris ut. Aliquip fabulas molestiae eos in, pro ad wisi legere vituperatoribus, intellegat necessitatibus ut pro. Nam in nostro utroque. In nec verear dissentias inciderint, sint dicit eos an. Alii graeci eligendi sea in, duo everti vivendo cu. Saperet intellegam vim et. Pro eu error singulis.'
                                    )

  e.posts.create(title: 'Anne Frank House Trip', byline: e.byline_name, body:
      'Lorem ipsum dolor sit amet, quo munere soleat corrumpit id, mundi iudico regione eu vim, ex errem alienum nam. Ius ei magna molestie rationibus, ex has feugiat salutandi, in vel hendrerit prodesset necessitatibus. Vix meis pertinacia ut, ornatus constituto omittantur ei eos. In sit vide consulatu. Ei usu omittam petentium expetenda, diam mutat mazim ut mei.

      Eum modo suscipit ex, aperiri oblique delenit et mel, nec probo iracundia interpretaris ut. Aliquip fabulas molestiae eos in, pro ad wisi legere vituperatoribus, intellegat necessitatibus ut pro. Nam in nostro utroque. In nec verear dissentias inciderint, sint dicit eos an. Alii graeci eligendi sea in, duo everti vivendo cu. Saperet intellegam vim et. Pro eu error singulis.'
                                                                    )
