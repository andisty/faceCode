User.delete_all

frank = User.create( email: 'frank@ex.com', password: 'abcd1234' )
alice = User.create( email: 'alice@ex.com', password: 'abcd1234' )
anton = User.create( email: 'anton@ex.com', password: 'abcd1234' )



Post.delete_all

Post.create( content: "Pizza is yummy!"                    , user: alice )
Post.create( content: "Veggies are tasty and nutritious."  , user: anton )
Post.create( content: "Salt is the best ingredient."       , user: frank )

Post.create( content: "I've seen Star Wars 23 times."      , user: alice )
Post.create( content: "Walking Dead has an exciting plot." , user: anton )
Post.create( content: "I only watch art-house films."      , user: frank )

Post.create( content: "My cats are cute!"      , user: alice)
Post.create( content: "Dogs are good friends." , user: anton )
Post.create( content: "My hamster resents me." , user: frank)

Post.create( content: "Free market solves all problems."        , user: alice )
Post.create( content: "Workers control the means of production.", user: anton )
Post.create( content: "Can't we all just get along?"            , user: frank )

users.each do | email, password |
   User.create( email: email, password:password )
end
