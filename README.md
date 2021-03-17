## Restrained Salmon

Now that dark mode is sweeping the world, true hipsters must migrate to using light themes.
This is one such theme.

To bring the user financial prosperity, the UI's principal color is that of FT.
However, that is not the real interesting bit here. What is, is the declarative
color scheme generation using fancy color science.

That is done using the sister project [palette_gen](https://github.com/qdbp/palette_gen)

The config files for this theme are included in this repo.

### Building

First, you need to install `palette_gen`. Then

`palette-gen palette <the colorspec config>`

`palette-gen scheme <the scheme config> <wherever the palette spec was saved>`

`<move/rename the file to the .theme.json reference isn't broken>`

`<build plugin with IDEA>`

The lack of a build system or even any serious attempt at documentation mathematically *guarantees*
that the produced scheme will be artisanal, hand-crafted hipster magnificence.

### Roadmap

Since `palette_gen` supports multiple view settings, being able to dynamically change the color scheme
based on lighting conditions, etc., seems like a tantalizing possibility...

### FAQ

#### Why is the UI so ugly?

First, I made everything some random color that would make my eyes hurt less than the default white
while I worked on what I actually care about -- the color scheme. This color happened to be similar to
FT salmon, so I thought, "why the hell not just rip off a newspaper for lulz?". Or so it goes.

The UI might get better eventually, but not by much, since working on it bores me.


#### Why not just use Solarized Light?

The time we have on this Earth is fleeting, and just about any course of action we take
is sure to leave us, as we die, with misgivings, regrets, and an overwhelming sense of gnawing
doubt. One thing which I decided I absolutely do not want to regret as I die is not 
having spent enough time pimping out my IDE color scheme to the utmost of my ability.
Obviously, using a canned color scheme is completely antithetical to this goal, no
matter how much easier and better it might be than my own ramshackle handiwork.