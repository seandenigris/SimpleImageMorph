# SimpleImageMorph

## Problem
Squeak/Pharo's ImageMorph act strangely when resized. They wrap themselves in aTransformMorph, which replaces the ImageMorph in the World and shows a scaled view of it. This is conceptually elegant - the ImageMorph and everything connected with it e.g. submorphs stay their "real size", like looking at a physical object through a magnifying glass. However, from a user perspective, it's jarring to have the thing you're dealing with replaced out from under you. It can also create problems: try copying a scaled ImageMorph's submorph via the halos and BOOM... MNU.

## Solution
Rather than emulating the physical world at this low level i.e. using a tool to change the view on a physical object, it may be simpler to create a new concept that empowers the computer by harnessing the possibility of the computer to transcend physical laws. So I propose a magical image - one that seems on the surface to be just like a physical photograph, but in fact can be stretched like taffy.
