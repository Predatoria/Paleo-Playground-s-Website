+++
date = "2017-03-22T16:49:45-04:00"
title = "Map Tides"
draft = false

+++
Today I will write a little bit about a tidal system I'm working on for our new, first official map, Tropical_Island_2_MP.  This map will be a series of tropical islands, and for this map I have been working on a tidal system.  Here's a couple screenshots, and please do excuse the fact this map is still very much a major, major work in progress. The tides currently have an hourly period and differ by 7 meters. 


## Tidal Comparison Ground-based View
<img src="/images/MapTides/LowTide1.png" width=600>
<img src="/images/MapTides/HighTide1.png" width=600>

## Tidal Comparison Air-based View
 <img src="/images/MapTides/LowTide2.png" width=600>
 <img src="/images/MapTides/HighTide2.png" width=600>
 
 This system has more in store for gameplay than simply cosmetics.  I have a few ideas on how to tie this into survival.  
 
 First and foremost is the concept of creating an interesting environment for our aquatic creatures, the Elasmosaurus and Mosasaurus.  On this map, should resources such as food or water become consumed, a player may find the need to cross bodies of water to reach fresh resources.  This poses a point of risk for the player, where they may be vulnerable to predation.
 
 The tidal system offers a periodic refuge from predation from these aquatic predators.  Notice that during low tide, the smaller island with the palms connects to the larger island with a bar of sand.  That was crafted deliberately.  The map will be designed such that there are always places of risk that require crossing, but low tide will always prove to be a safer alternative to high tide.
 
 I've also been considering the notion of having land-based creatures lose comfort while swimming in ocean water.  The realistic motivation could be they fear what's below, and thus are stressed.  Personally, I'm quite hydrophobic and find the notion of being in a deep ocean where I can't touch the bottom absolutely mortifying.  Low tide would also provide a means to take less 'comfort damage' if one wishes to wait the tides out.
 
 Lastly, eventually I would like to create some sort of weather system that has storms and rain.  The presence of a tropical storm could cause the sea level to rise past the high tide mark, flooding much of the islands and forcing players to take refuge on higher ground.  A functional tide system would be a good starting point to further control the water level from weather-related events.

## The Vexation 

Creating such a system has become quite a bit more difficult than I first imagined, and it may answer the question of why you don't see tides in games very often.

The vexation sources from UE4 and how it uses what are called physics volumes.  A physics volume is a static rectangular prism that you place manually on the map.  When an object or player enters the physics volume, it changes how the object behaves.  A water volume is a subcategory of physics volume that applies water physics.  

Tides mean that the water level moves up and down over time in a sinusoidal fashion.  This means this static rectangular prism I place on the map must move during playtime.  UE4 has resisted and roadblocked me in every possible avenue I've tried to take to work around this issue.  

I had thought the issue was resolved last Monday when we had our second multiplayer open-server event, but a major and very nasty bug surfaced instead.  Whenver any other player or character entity (AI raptors) would enter a body of water, it would act like every player entered a body of water.  During this time, if a player's feet left the ground, they'd become buoyant and start floating upwards into the sky.  We called it the 'float bug.' 

 <img src="/images/MapTides/FloatBug.png" width=600> 

In order to create a properly functioning tidal system in UE4, it looks like I'm going to have to recreate my own water physics on my own.  Every other avenue I've investigated has hit a roadblock and I do not want to give up on the tidal system!  

I'll get it working, it's just going to be more difficult than I thought.  Maybe we'll end up with nicer swimming physics in the process.