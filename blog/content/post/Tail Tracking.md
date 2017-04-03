+++
date = "2017-04-03T16:49:45-04:00"
title = "Tail Tracking"
draft = false

+++
### By Predatoria
Last weekend I decided it was time to place our Apatosaurus into Paleo Playground.  Adding another playable creature to Paleo Playground is often one of the most fun aspects of creating the game, so I try to pace myself regarding creature additions and space them out between other aspects of game development.  We are a bit overdue on adding a fourth playable dinosaur.

<img src="/images/TailTracking/Apato.png" width=300>

In some regards adding another creature is repeating material already done before, but in a slightly different fashion.  The Apatosaurus, for example, animates in similar ways as the other dinosaurs.  It runs, it walks, it eats, it drinks, it roars, it calls, and it attacks.  Attack, however, in this case, was very much not like the others and that's where it became interesting to me as an aspiring game developer.

The [Apatosaurus](https://en.wikipedia.org/wiki/Apatosaurus "Wikipedia Apatosaurus") was a Diplodocid, meaning it was a member of a family of sauropods that had particularly long, whip-like tails.  It is hypothesized that these dinosaurs used their tails as a means of defense to ward off predators, and I want our Apatosaurus to follow true to this in Paleo Playground.  How to manage to get the Apatosaurus to grant player control of its tail, however, was not an easy problem to solve.  It was solved, however, creatively, as I will explain below!

## Head Tracking

The Velociraptor came with a head tracking animation that allows the creature's head to follow your camera.  Its snout follows wherever the center of your screen is looking and its neck cranes appropriately.  None of our other dinosaurs came with head tracking animations, and I admittedly don't know how to create head tracking animations either.  I did, however, watch a tutorial series on retargeting animations that I put to good use.

Retargeting animations allows me to take an animation that belongs to one dinosaur and attempt to mimic the bone transforms onto another. It doesn't always give great results as was the debacle that was our Utahraptor, but for head tracking the results were quite good.  Velociraptor head tracking retargeted nicely onto the Acrocanthosaurus, the Parasaurolophus, and even the AI Utahraptors! 

A major part of being an indie developer is coming up with creative ways to deal with having a very modest budget and an often incomplete palatte of assets and resources.  I wanted tail tracking, but all we had was head tracking and a static animation for a generic tail whip attack.  Then I had this idea:

## Lead to Tail Tracking

***What if I retargeted the head tracking animation for the Velociraptor not just onto the Apatosaurus' head, but also onto its tail?***

It worked!  Tail tracking!  The tail followed my camera just as the head did but the results were crude at first, but promised to deliver what I wanted with a bit of tuning.  I had to take it a bit further than just retargeting the head tracking onto the tail as well, as the first pass was not very good.  

First of all, I found that there were much better results if I retargeted to the vertebrae near the base of the tail rather than equidistant along the entire tail.  This gave a sharper curvature along the base, with the long and thin part of the tail sticking out like a sword pointed where I wished.  

Second, the tail didn't turn far enough just by using the head tracking animation and its range was limited.  I found that by adding on top of this the banking animation's tail curvature I could achieve a much wider range of motion with the tail, allowing it to curve right up alongside the body of the Apatosaurus if the player desired to protect their flanks.

Last, I wanted the tail to only curl towards my look direction if I was looking to the sides or backwards, thus a foreward-facing Apatosaurus would have a tail oriented backwards in a non-defensive and neutral position.

And super last, I added knockback to its tail.  It slaps Velociraptors pretty hard!

When you press the right mouse button, the tail cracks like a whip sweeping the area it is pointed.  It seems to be quite lethal and very scary, even from the high seat of playing the Apatosaurus.  I can't imagine how intimidating this tail will be to a potential predator.  Combining these tweaks and alot of time and attention to detail of this, I got these great results:

<img src="/images/TailTracking/Tail1.png" width=600>
<img src="/images/TailTracking/Tail2.png" width=600>
<img src="/images/TailTracking/Tail3.png" width=600>
<img src="/images/TailTracking/Tail4.png" width=600>

I hope you enjoyed reading about how tail tracking was achieved in Paleo Playground!  I'm pretty excited about it, as I feel like this little detail will make our sauropod much more fun to play and much more capable of defending itself as well, doing justice to the glorious Diplodocids of the Jurassic.

