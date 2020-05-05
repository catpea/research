---
id: research-0048
title: >-
  It Took Me A Moment To Figure Out How To Structure Colors Shades For User
  Interface In The The Problem Was I Needed More Color...
category: research
tags: Bootstrap Programming
date: 2020-04-05T16:56:55.639Z
draft: false
deleted: false
---

It took me a moment to figure out how to structure colors/shades for User Interface in the [CATPEA DAW](http://catpea.com/daw). The problem was I needed more colors, but I don't want to go against [Bootstrap](https://getbootstrap.com/)'s way of doing things. So, where they have a color scheme like this: primary-color, secondary-color, muted-color, warning-color. I added primary-color-dark, secondary-color-dark, muted-color-dark, warning-color-dark and primary-color-light, secondary-color-light, muted-color-light, warning-color-light. So when two of bootstrap colors start biting each other for example button and box (that the button is in) I can make the button lighter by saying button color: primary-color-light, so I tripled color count, in such a way that all the users of the [Theme](http://catpea.com/theme) just need to remember "Oh, yeah, all the colors have a dark and light variation now. Hmm." so [CATPEA DAW](http://catpea.com/daw) UI is back to semi-normal now, and I updated the [Theme](http://catpea.com/theme) page to show off this upgrade.
