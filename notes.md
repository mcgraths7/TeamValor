trainer tiers:
low
mid
high
uber

uber tier trainers can challenge leader to claim that gyms badge

uber tier trainers then have the option to switch gyms and start again

NEW POKEMON MODEL

name => "bulbasaur"
type => "grass"
current evolution state  (0,1,2,3)
0 => unique
1 => base
2 => mid
3 => top

total number of evolutions (0, 1, 2)
0 => unique
1 => base to top
2 => base to mid to top

base => "bulbasaur"
mid => "ivysaur"
top => "venasaur"
unique => nil ("lapras")
rarity => 1..10
level_range => Rand(5*rarity..10*rarity)

Stats notes
Battle
  - which user battled most
        go through the results, and find the user who has battled most
          SELECT user.name FROM battles WHERE user.maximum(id)



  - which user won most
    I want the name of the user who has battled and won the most.
    
      select user.name from battles where 
  - which element wins most

User
  - highest level pokemon
  - top element by level
  - user with highest rank

Trade
  - last trade made
  - who's initiated trades most

