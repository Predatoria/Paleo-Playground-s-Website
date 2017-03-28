+++
date = "2017-03-22T16:49:45-04:00"
title = "Overeating System"
draft = false

+++
We just implemented an overeating system to Paleo Playground, and I'll talk about it here.  Yesterday, a player named [BeatBox2G](http://steamcommunity.com/profiles/76561198168732830 "BeatBox's Steam profile') had a great suggestion.  He suggested, what if players who overate became slower and gain
weight.  

<img src="/images/OvereatingSystem/DiscordSnip.png" width=400>

I decided to take this idea and implement it into Paleo Playground!  I started brainstorming ideas on how gaining weight could be implemented as a game mechanic and how it would influence your character.

First we needed a way to implement becoming overweight visually.  The way we accomplished this was to stretch the dinosaur model's width out a little bit.  It ended up being a great way to have a dinosaur look like it'd put on a few pounds without really distorting the model or making it behave poorly.  Thankfully, this implementation of fatness didn't cause any adverse effects in other regards such as animation issues, collision issues, or other gameplay mechanics issues.  Here's a few pictures of the result of our idea for fatness.

## Parasaurolophus Weight Gain Comparison
Normal Parasaurolophus
<img src="/images/OvereatingSystem/NormalPara.png" width=600>
Parasaurolophus at +20% Width
<img src="/images/OvereatingSystem/FatPara.png" width=600>

## Velociraptor Weight Gain Comparison
Here's another image with a couple raptors showing one who has gained weight against a normal, leaner raptor.

Front
<img src="/images/OvereatingSystem/RaptorPairFront.png" width=600>
Back
<img src="/images/OvereatingSystem/RaptorPairBack.png" width=600>

So other than simply making a player look heavy, the weight gaining has many implications on gameplay as well.  The idea for this is that it will be a debuff in most scenarios with niches where it could potentially be beneficial for a player to decide to become heavy.  

First of all, becoming heavy is as simple as overeating.  Normally, a player could eat up until they had reached 100 food value.  Any eating beyond this was discarded, as your food resource was full.  It now is set up such that a player can exceed this cap and raise their food value to 130, or 30% above being full.  Any time the player is above the food cap, their dinosaur will scale outwards linearly, up to 30% wider for maximum girth.

This also has numerous implications on how their dinosaur behaves.  

## Debuffs

* Overweight dinosaurs move slower, at a rate of down to 1/(1.3) * their regular speed.
* Overweight dinosaurs have a harder time with slopes, capping out at down to 1/(1.3) * their normal maximum walk-up slope.
* Overweight dinosaurs drain stamina faster, at a rate of up to 1.3 * their regular stamina drain rate.
* Overweight dinosaurs recover stamina slower, at a rate of down to 1/(1.3) * their regular stamina regeneration rate.
* Overweight dinosaurs lose up to nine comfort bias.

So why be overweight?

## Buffs

* Overweight dinosaurs can have up to 1.3 * their regular maximum health.
* Overweight dinosaurs get larger heal ticks, up to 1.3 * their regular healing rate.
* Overweight dinosaurs are less susceptible to knockback, only flying 1/(1.3) * as hard.
* Overweight dinosaurs knock other dinosaurs back harder, hitting for 1.3 * more knockback velocity.
* Overweight dinosaurs take 7 minutes to drain back down to regular food levels.

All of these stat changes are linear.  The effect is strongest when the player is the most overfed, and linearly alter back to regular levels as the player's dinosaur loses the weight.

The entire premise is that an overweight dinosaur represents a slower, more lethargic target and in most scenarios a player does not want to overeat because they're both at greater risk for predation and will have a harder time catching prey.  After all, the dinosaur models do look the best when scaled properly in all regards.  There may be, however, some scenarios where a player wishes to overeat, especially if recovering from a nasty battle wound or planning to go a longer time without food.

I think this will be a fun and humorous mechanic that players will enjoy, and it adds some depth to the game.