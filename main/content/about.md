+++
date = "2017-03-15T16:49:45-04:00"
draft = false
type = "page"
layout = "info"

title = "About"
containerid = "about"
+++

# About Paleo Playground
------

Paleo Playground is still very, very early in development.  We have been working hard to bring this game up and develop it into an open-world, multiplayer survival game in which the player takes the role of various herbivorous or carnivorous dinosaurs.  

**What survival elements will be present in Paleo Playground?**

Players will need to manage three resources well in order to survive in our ecosystem.  Two of these, food and water, are easily guessable by an audience well-versed in survival games, but the third may come as an interesting surprise.  The third resource that will play a very critical role in a player’s ability to hunt, evade predation, and ultimately survive is comfort.  I’ll go into a bit more detail regarding the roles food, water, and comfort will play in a player’s survival in Paleo Playground.

<img src="/img/faq/UI.png" width=300>

Food will be acquired in one of two ways, depending on which creature you choose to play.  Carnivores will survive solely by feasting upon the corpses of others.  Herbivores will survive solely by feasting upon plant life that’s placed around the map.  Omnivores will survive by eating from both sources, but will only be able to fully satiate their hunger by feeding on both sources of food.

Larger creature carcasses yield more food value, and larger creatures also require more food to sustain themselves.  This is, in fact, one way we will balance the ecosystem for meat-eaters.  Smaller creatures will simply have an easier time feeding.  The AI in our game will be small, offering less than a bite to a large carnivore.  This means that while a smaller creature such as a Compsognathus may be able to survive solely off the pickings of our AI or a quick snack from a nearby carcass, a larger creature will need to hunt and kill other players to survive.  If everybody wishes to play a Tyrannosaurus Rex, they’ll need to kill each other for survival, as the baseline ecosystem will fail to offer food for such a collection of large beasts.

Regarding plant material, it works in a similar way.  Large herbivores will require a lot of plants to survive, larger ones being capable of consuming entire areas of plant material at once.  Different herbivores will also eat from different plant groups, with larger ones being capable of eating larger foliage.  The plant life on the map will be tuned such that it poses threat of exhaustion should too many players play as large herbivores.  Plants will regenerate over time, and this foliage regeneration rate is fixed.  A player may find themselves much more relaxed regarding dietary requirements playing a smaller herbivore capable of sustaining itself purely on smaller, quickly respawning plants.

We also have an interesting take on how water works in Paleo Playground.  Our water sources are not static.  They deplete and the water table drops when used for drinking, and it slowly replenish over time.  Larger creatures deplete water rapidly, whereas smaller creatures do little to drop the level of a watering hole.  Again this offers a second check on our ecosystem in Paleo Playground.  If every player wishes to play a large herbivore or carnivore, they’re going to be thirsty and watering holes will dry up, forcing competition.

Lastly, the resource that may play the most pivotal role in shaping the player-built ecosystems Paleo Playground will harbor is comfort.  Comfort is a representation of how comfortable you are as a creature in the world.  Stressful scenarios will decrease your comfort, whereas scenarios that provide safety or soothing will yield an increase in comfort.

**How does comfort work?**

Currently, comfort only modifies how fast you gain or lose health, however it will likely also influence other factors that govern combat performance such as stamina and ability power, and may even govern rates a player loses thirst and hunger over time.

I have created a simulation below on how comfort effects the rate at which you gain or lose health, though this is a very fickle numerical balance that may change during development.  On this graph are eleven different comfort levels, being 0%, 10%, 20%, all the way up to full comfort, or 100%.  At very low levels of comfort, the player will start dying from stress.  This will happen over the course of several minutes as to not become a detriment in the heat of combat, defense, or hunting scenarios.  High levels of comfort increase the rate you regenerate health.  

<img src="/img/about/ComfortSim.png" width=1000>

At 15 minutes in this simulation, the player has run out of water.  With high levels of comfort, one can thwart dehydration for nearly 15 additional minutes of having zero water.  With average levels of comfort around 50%, dehydration poses an immediate threat to survival.  The same scenario would be present for starvation.

What does all this mean?  The bottom line is, if you're comfortable and under little stress, you will be better equipped to heal wounds, fight off predators, hunt prey, and ultimately survive.  Stress reduces your ability to survive and, when experienced in high levels, will actually start killing you.

There will be many ways to gain and lose comfort in Paleo Playground.  The most prominent feature of this system is a means to control herds and player association.  If, for example, you are playing as a parasaurolophus, the presence of an acrocanthosaurus will stress you out.  The reverse is also true, and the presence of a herbivore such as a parasaurolophus will also apply stress to the acrocanthosaurus.  These creatures are meant to have a predator-prey relationship in our ecosystem, and thus close proximity will slowly erode a players comfort level.  If a herd of parasaurolophus want to adopt a carnivore into their herd, that carnivore will die from stress and apply a negative, stressing aura on the herd while it does so.  

Positive proximity-based influences will also be present with the comfort system.  There will be three varieties of creatures when it comes to comfort.  

The first is herding creatures that will gain comfort when in proximity to others of a herd.  It is likely all herbivores will gain comfort when in proximity to one another, though it is still up for debate whether some herbivores will stress one another out.  

Smaller carnivores will gain comfort from being close in proximity to others of their own kind.  An example of this would be the velociraptor, who gains comfort simply by being close to other velociraptors. 

Last are larger carnivores such as our acrocanthosaurus.  It will only be able to pair bond with the comfort system, in which being close to one other member of its species increases comfort, but any more will reduce comfort.  

The ultimate goal of this system is to provide a game mechanic that is a check on large, mixed species groups that I forsee forming in the absence of such a mechanic.  The effects of the system will be tuned such that it's discouraging enough to prevent such groups and the tricky part will be allowing differentiation between what's a hunt, and what's not.

**What kinds of maps will there be?**

I've always been a fan of bright, sunny, tropical maps and I also like islands and jungle ruins.  The map we're currently working on is, expectedly, a bright sunny tropical island!  For a while during contruction of the game in its earliest stages, we played on Tropical_Island_1_MP.  This map used some placeholder texture assets and a low-poly foliage pack I purchased off the UE4 marketplace. 

Beginning March 16th, however, we have began development on an improved map that will likely serve as one of many playable maps in the game's future.  This one for the time being has been named Tropical_Island_2_MP.  It is likely a desert-based map with lush oases and scarse water resources will be created.  A plains-based map and a marsh-based map have also been discussed.  Here, however, I'll go into a bit more detail about the map we're currently focused on, Tropical_Island_2_MP.

<img src="/img/faq/Map1.jpg" width=600>
<img src="/img/faq/Map2.jpg" width=600>

To not reveal embarassing screenshots of extremely unfinished terrain, I present above two images that give the kind of atmosphere we will be going for on our first official map.  It will be a series of islands covered with lush, tropical vegetation and hidden, ancient ruins.  As to why dinosaurs are occupying the same time period as man-made ruins, hmmm, it may be revealed later in a post about Paleo Playground's backstory!  The ultimate answer is that I love temples and jungles, and wanted a map with them in it.  

