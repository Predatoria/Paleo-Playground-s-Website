+++
date = "2017-06-06T16:49:45-04:00"
title = "Elasmosaurus Head and Neck Tracking"
draft = false

+++
So it became time to add our second aquatic creature to Beasts of Bermuda (we just decided on a name change from Paleo Playground).  The Elasmosaurus is a very unusually shaped predator, with a long neck adept at swiftly catching fish or other small prey with lightning speed.  One issue, however, arises when we consider this strange beast.  It has a very, very long neck.

<img src="/images/ElasmoHeadTracking/Elasmo.png" width=600>

When I placed this creature into the game and for the first time possessed it, I immediately realized the problem.  

<img src="/images/ElasmoHeadTracking/Elasmo2.png" width=600>

This creature was impractical for play.  If there are fish in the sea, trying to bite them with a mouse and standard movement keys would be like trying to swat a fly with a broomstick.  When this creature roamed the seas, its long neck was very much an advantage to catching its prey, but in-game, it presented a major hinderance to doing anything as a player.

This had to change.

I embarked on a journey to change this creature from an unwieldy mess into one that would put its long neck to use for the player.  I created a mechanic that allows the head and neck to snap to and bite its prey automatically, initiated by the player simply clicking the attack button while the creature was in range of its prey.

The initial mathematical problem of doing this was dauntingly complex sounding, even for someone who enjoys math such as myself.  I have a neck with 20 vertebrae of identical length.  I must change the angle and length of each vertebrae in a three dimensional space such that the head makes contact with the prey.  I pulled out a piece of paper, and within minutes was completely, utterly stumped.  This problem sounded infinitely difficult and I didn't even know where to begin trying to compute such a problem emperically.

Then I remembered, I'm working with a computer.  I don't need to solve this equation emperically.  I just need to get it close to its target.  Close enough for the teeth to bite.

I began working on an iterative approach to solving this problem and it began as a simple algorithm.  If the head needed to turn further to reach the prey, rotate each vertebrae a little bit further by an identical angle.  If I go to far, unrotate each vertebrae a little bit, again, in uniform amounts.  This was done in two dimensions, both rotating pitch and yaw angles of the neck.  Unfortunately, it had no way to reach prey that was outside an ellipsoid surface surrounding the elasmosaurus.  It nearly always missed everything, but it was a start.

I added to the algorithm.  Not only would it curl each vertebrae equally, but I included an additional step in each iteration that rotated the vertebrae near the head moreso than the ones near the base of the neck by another amount, in direct porportion to how far the jaw was from the prey distance-wise.  This gave the impression the torso side was bounded and fixed, whereas the head connecting side of the neck was free to rotate to much greater degrees.  It presented the curl I was looking for that was much more convincing of the actual animal.  The accuracy of the algorithm in finding the prey was also tremendously increased, especially when considered in both pitch and yaw dimensions for this second step as well.

Finally, when the algorithm had gotten as close as it could with these two rotational steps, it would finally stretch each vertebrae a little larger if the prey was still out of range.  Prey in range would always be found by the curl, and needed no contraction of vertebrae length to hit the prey target.

It took several iterations to reach the prey target using the algorithm described above.  It also had several variables that required tuning.  How large is each step of uniform neck curl, tip-based neck curl, and vertebrae expansion in relation to each other?  How fast should the algorithm go?  What happens when it overshoots, and how fast does it uncurl in reverse?  These values I tuned by a lot of trial and error until I got something that worked quite well.

The iterative approach of such an algorithm not only saved me from a terrifying math problem, but also lended itself to the animative nature of computer gaming.  The Elasmosaurus needed an animation for this, and that's what we got.  It took a small fraction of a second for the head to reach its target, but that's all it needed to present a motion that was fast, but not instant.  The result was our animation.

The results were quite amazing, actually.  The elasmosaurus, with terrifying speed and accuracy, nailed its prey almost every single time.  I could swim by, swim under, swim above, or do whatever I wanted.  I could be moving, and my prey target could also be moving as well.  If I pressed my left mouse button and the elasmosaurus was staring down a tasty morsel, it grabbed it.

<img src="/images/ElasmoHeadTracking/Neck1.png" width=600>
<img src="/images/ElasmoHeadTracking/Neck2.png" width=600>
<img src="/images/ElasmoHeadTracking/Neck3.png" width=600>
<img src="/images/ElasmoHeadTracking/Neck4.png" width=600>
<img src="/images/ElasmoHeadTracking/Neck5.png" width=600>

It would occasionally do goofy things and coil into helixes, spirals, and corkscrews,

<img src="/images/ElasmoHeadTracking/Neck6.png" width=600>

But it would still reach the target, no matter what the neck had to do to get the head there.

We had our first Elasmosaurus playtest last evening.  It was quite an interesting experience seeing the prey finding algorithm I set up here working in an actual gameplay environment, with players hunting and fighting and biting each other.  

The neck sometimes coiled in bizarre spirals trying to reach its target as players swam by rapidly biting each other, but the end result was very clear.  The Elasmosaurus has been given the ability to be a ferocious and terrifying predator that was not only playable, but tremendously enjoyable, all because of a game mechanic that does its long neck proudly.  I am very happy this is working as well as it was last night!


