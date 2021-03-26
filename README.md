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

Originally this theme used the FT salmon color directly. Now, it's only loosely
inspired by it -- but the name stays. All theme colors are generated jointly
from the scheme colors from the same palette spec for maximum harmony.

The effect is to create a clear division into exactly two areas: the grey editor
field, and the reddish, "calming" UI field outside it. Adaptation to the reddish
surrounding tint makes the editor look cooler than it would under ambient
monitor temperature settings, which I think is a nice effect.

## The Restraint Scheme

This is the interesting bit, designed with all the color science, etc, blah blah
blah, see
[palette_gen](https://github.com/qdbp/palette_gen).

The name suggests muted colors, which is necessary for a light scheme to avoid
retinal destruction. Function delcarations, identifiers and keywords are
greyscale to further this effect.

### Design Language

Further to trying for restrained colors, I attempt to follow a visual design
language, outlined in this section. Its dictates are interpreted as gentle
guidelines and are not followed whenever the result is fugly.

#### Bold Is Control Flow

The only things that are bold are keywords, function calls and any other
language construct -- modulo my ability to select it for highlighting -- that
alters control flow. Nothing else is bold: not declarations, not global
variables, etc.

I believe this creates a very nice effect where when glancing at a block of code
its structure and the functions it calls jump out to give a high-level
impression of what it does, before you become aware of the specific identifiers
involved.

#### Italics are Mutability

Wherever sensible, mutable variables or mutation in general are denoted by
italics. This is interpreted sensibly, in that I don't, for instance, make every
variable in Python or every non-final variable in Java italic.

However, in Java I italicize variables that are reassigned, and so on.

#### Color Is Semantics

The most important fact about colors in this theme is that they have global,
cross-language semantics. Each color is assigned a specific meaning such as,
namespace, global variable, interface, number, etc. This color is then used as
exclusively as possible in this role across languages.

These interpretations, of course, have to be stretched depending on the
particular language; however, I always aim to keep the meanings as true as
possible.

Generally, lower-brightness colors are used for type variables and literals.
Colors of medium brightness are used for various mundane identifiers, while the
brightest colors are reserved for global concepts such as labels, constants, and
builtins. Within each of these categories, colors are assigned so as to try make
as many languages look as pleasing as possible given the semantic consistency
constraint.

The perceptual uniformity of the primary colors ensures that even within this
framework, for any given language the balance of tones looks rather nice, if not
the best it could if colors had free per-language semantics.

## Installation

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
