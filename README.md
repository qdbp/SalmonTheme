## Restrained Salmon

Now that dark mode is sweeping the world, true hipsters must migrate to using light themes.
This is one such theme.

To bring the user financial prosperity, the UI's principal color is that of FT.
However, that is not the real interesting bit here. What is, is the declarative
color scheme generation using fancy color science.

That is done using the sister project [palette_gen](https://github.com/qdbp/palette_gen)

The config files for this theme are included in this repo.

### Building

First, you need to install `palette_gen`. Then, run

```shell
make <night|day>
```

to geherate the `theme.json` and `.xml` color scheme files. After this, build with
IDEA.

### Roadmap

Since `palette_gen` supports multiple view settings, being able to dynamically change the color scheme
based on lighting conditions, etc., seems like a tantalizing possibility...

### FAQ

#### Why not just use Solarized Light?

The time we have on this Earth is fleeting, and just about any course of action we take
is sure to leave us, as we die, with misgivings, regrets, and an overwhelming sense of gnawing
doubt. One thing which I decided I absolutely do not want to regret as I die is not 
having spent enough time pimping out my IDE color scheme to the utmost of my ability.
Obviously, using a canned color scheme is completely antithetical to this goal, no
matter how much easier and better it might be than my own ramshackle handiwork.