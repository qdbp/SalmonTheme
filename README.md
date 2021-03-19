# Restrained Salmon

## Introduction

Now that dark mode is sweeping the world, true hipsters must migrate to using
light themes. This is one such theme.

To bring the user financial prosperity, the UI's principal color is that of FT.
However, that is not the real interesting bit here. What is, is the declarative
color scheme generation using fancy color science.

That is done using the sister
project [palette_gen](https://github.com/qdbp/palette_gen)

The config files for this theme are included in this repo: `colorspec.yaml`
, `scheme.yaml`, and `theme.yaml`. I have tried to make these declarative
specifications as DRY as possible, allowing changes to colour specification or
high-level layout concerns propagate automatically to all relevant elements.

## The Salmon Theme

Not much to be said for this one: the FT salmon, everywhere, for all time. I
tried to make it as uniform as possible to minimise visual distractions.
Non-salmon accent colors, such as for the icons, are generated jointly with
those for the color scheme for maximum harmony.

The effect is to create a clear division into exactly two areas: the grey editor
field, and the reddish, "calming" UI field outside it. Adaptation to the reddish
surrounding tint makes the editor look cooler than it would under ambient
monitor temperature settings, which I think is a nice effect.

## The Restraint Scheme

This is the interesting bit, designed with all the color science, etc, blah blah
blah, see
[palette_gen](https://github.com/qdbp/palette_gen).

As a scheme for programming vs. just as a finger-painting exercise, I attempt to
design a uniform visual language that
(I conjecture) will allow one to code faster once one internalizes it.
Specifically:

The design elements below are interpreted as gentle guidelines and are not
followed whenever the result is fugly.

Finally, as the name implies -- and as necessitated by a light theme that is not
intended for mass retinal destruction -- the colors used are muted. Some
type-level colors, in particular, are close to the default text color since
distinguishability of type- and inhabitant-level entities is generally not an
issue.

#### Font Style Signals Control Flow + Scope

- bold is reserved for keywords and control flow
- italics are reserved for mutability where sensible (I don't, e.g., make
  everything italic in Python, though I will if the Rust Moral Foundation /
  Haskell Ivory Tower Institute give me money)
- global scope is signalled by underlines
- static scope is signalled by underdots

## Font Color Signals Ownership + Type

I do not enumerate specific colors here since those can be revised. In general,
color signals distinctions between:

- local variables
- members
- parameters
- captures
- nonlocals
- classes, interfaces, and type variables
- string, numerical and other literals

To the extent the coloring rules are redundant with the font style rules, the
font styling is omitted to minimize visual clutter.

First, you need to install `palette_gen`. Then, run

```
make <night|day>
```

to generate the `theme.json` and `.xml` color scheme files. After this, build
with IDEA.

## Roadmap

Since `palette_gen` supports multiple view settings, being able to dynamically
change the color scheme based on lighting conditions, etc., seems like a
tantalizing possibility...

## FAQ

### Why "Restraint"?

I wanted to go back to the elegance of LaTeX-set pseudocode, and otherwise have
a minimum of "gaudy skittles bag"-style highly saturated bright colors. To this
end, I decided that, foundationally

- keywords are bold black
- identifiers are off-black
- function/method calls are bold black, same as identifiers

The last design point in particular, as well as withholding boldness from
anything that does not affect control flow, makes the structure of a function
just pop out. I believe it's a solid foundation.

The rest of the scheme grew around the above decisions, guided by the idea of
staying "restrained", using lower saturation and darker tones for contrast.

### Why not just use Solarized Light?

The time we have on this Earth is fleeting, and just about any course of action
we take is sure to leave us, as we die, with misgivings, regrets, and an
overwhelming sense of gnawing doubt. One thing which I decided I absolutely do
not want to regret as I die is not having spent enough time pimping out my IDE
color scheme to the utmost of my ability. Obviously, using a canned color scheme
is completely antithetical to this goal, no matter how much easier and better it
might be than my own ramshackle handiwork.