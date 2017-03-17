+++
date = "2017-03-17T16:49:45-04:00"
title = "Skin Customization"
draft = false

+++

I want to write a bit today about the skin customization system we have planned for Paleo Playground.  For a bit of background, I was very impressed with a website known as [Evosaur](http://evosaur.com/dinodemo "Evosaur") that allows players to create a wide array of different dinosaur skins simply by choosing colors and patterns with dropdown menus.  In great part, this is the source of inspiration for the system we are implementing here.

We want players to be able to have a great degree of control over the skins they use in-game rather than simply have a selection of few premade, static skin choices.  One aspect that’s appealing about this system is that it lets each player have a unique look, as the possibilities will be nearly infinite once the system is complete.  A player can become known and recognized for their unique look and create an in-game identity using such a system.  We also have further plans for implementing this system as a means of cosmetic-based progression, which I will get into later on in this post.

The UI for the skin customization system is now complete and here is a picture!  This is actually a skin created by That Thing specifically for use in our skin customization system.  A word of caution, however, is that in the future there will be many more options available to players than simply what is shown on this screenshot.  This system really is in its infancy, and we currently lack art assets to fully implement the complete selection of options that will be available at this time.

![alt text](https://github.com/Predatoria/Paleo-Playground-s-Website/blob/master/blog/content/post/SkinCustomizationImages/ExampleUI.png?raw=true "")

There are three levels of abstraction in our skin design system that can be seen on the right.

The first is that a player will be able to choose specific areas of their dinosaur they wish to customize.  Examples of these currently in-game in this screenshot are the base color, the full cover, and the eye color.  The velociraptor also has feather coloring options for its wrists, tail, and crest.

Each of these areas will further have selections of different patterns to choose from.  For example, a player can choose to use the default stock skins that came with the models and recolor them or have the option of choosing additional skins that are created specifically for this system.  Additional patterns could include stripes, spots, solid color gradients, or other variations.  Here are a few example concepts we have potentially in plan for velociraptor pattern choices, made by BananaBae.  One of these seven would be selected as a pattern choice.

![alt text](https://firewalrus.com/paleo/devblog/post/SkinCustomizationImages/VelociraptorPattern1.png "")
![alt text](https://firewalrus.com/paleo/devblog/post/SkinCustomizationImages/VelociraptorPattern2.png "")
![alt text](https://firewalrus.com/paleo/devblog/post/SkinCustomizationImages/VelociraptorPattern3.png "")
![alt text](https://firewalrus.com/paleo/devblog/post/SkinCustomizationImages/VelociraptorPattern4.png "")
![alt text](https://firewalrus.com/paleo/devblog/post/SkinCustomizationImages/VelociraptorPattern5.png "")
![alt text](https://firewalrus.com/paleo/devblog/post/SkinCustomizationImages/VelociraptorPattern6.png "")
![alt text](https://firewalrus.com/paleo/devblog/post/SkinCustomizationImages/VelociraptorPattern7.png "")

Under each pattern are color choices that use the color picker.  These will recolor separate pieces of the pattern.  Adjustment of the alpha can also be done such that more or less of the underlying coloring can be seen.

During our first Multiplayer test last Monday, March 12th, players seemed to very much enjoy this feature even in its early stages.  Here you can see several of us lining up for a little skin design contest we had.  The parasaurolophus seemed to be a popular dinosaur choice due to its stock skin being particularly conductive to fun recolors.

![alt text](https://firewalrus.com/paleo/devblog/post/SkinCustomizationImages/SkinContest.png "")

But this screenshot does beg another question to be brought up.  Just how much colorization and customization should we, as game designers, allow?  Currently, it is completely unchecked.  Some other games such as Skyrim do have significant customization options players can choose for their characters, but most games don’t let you have a neon green skin tone, and restrict such an option appropriately.  After all, we already have seen some crazy skins come up with this system.

![alt text](https://firewalrus.com/paleo/devblog/post/SkinCustomizationImages/UglySkin.png "")

So as a game designer, do I restrict the palate of colors to more natural variations?  If I wished to do so, by what means or algorithm would I decide what colors were acceptable and what colors were not?  It is much, much easier from my perspective to let a player have full control over the color choices than to try to restrict it in ways that disallows skins such as the one above on the left.  Do we even want to restrict it at all?  After all, taking away options from players can only serve to restrict what a player may want to do.

It really is a double-edged sword.  On one side, you have players who may be offended or annoyed by exceedingly ridiculous or vibrant skins, claiming it degrades the immersion of the game experience.  On the other side, the very classification of what defines a ridiculous skin is a very grey area that’s hard to define, and this opinion of classification will vary tremendously from player to player.  I have personally heard both opinions voiced to me over the future of this system, and am not quite sure what we wish to do with it yet regarding this issue.  

One idea we do have for this system, however, that I hinted about earlier in this post is it serves as grounds for a cosmetic-based progression system.  One challenge with creating a survival game where players gain no power by surviving and have full choice of dinosaur selection from the beginning is keeping them interested in surviving at all.  If there is no reward for surviving in our ecosystem, why would players stress over finding food, water, or hunting to eat?  

Here lies one of our solutions to both of these issues, the first being overtly bright skin recolors.  Eventually, players will not be able to spawn immediately with a parasaurolophus that has a brilliantly colored stripe along their lateral, or with a bright crest atop their head.  They won’t be able to have rich, red feathers as a velociraptor immediately.  These options will be earned by surviving, though it’s also quite likely that skins a player creates during a particularly long-lived life will also become a permanent, fixed skin they can choose in the future.  The topic of how we plan to create costs and cosmetic progression is a topic for another day, but I hope it gives a fun means by which players can try and survive and collect skins.
