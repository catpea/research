---
id: research-0070
title: >-
  I Went For The Gold Ive Been Experimenting With Low Level Scss Language
  Processing For A Goodie Long While Now And I Just Fin...
category: research
tags: Bootstrap Programming
date: 2020-04-11T23:55:56.207Z
draft: false
deleted: false
---

I went for the gold, I've been experimenting with low level SCSS language processing for a goodie long while now, and I just finished an early test of a program that removes color information from [Bootstrap](https://getbootstrap.com/).

![Nocolor](image/research-0070-nocolor.jpg)

Bootstrap With Color Information Stripped Off

Buttons are white as that is their uncolored-color, I have access to, probably 100% of code, so if I missed something I can track it down.

It is hard to estimate the usefulness of this system. But, Bootstrap is being irresponsible with their use of colors, so I remove them. I allow myself to start at zero. It is a consistent surface to work with.

This wasn't too hard to code but it took the entire afternoon, like six or seven hours. It is a computer program that I can re-run on every new version of bootstrap. So, nothing they do will mess with my colors.

I'll have to think about this some more. If it is at all possible to process Bootstrap automatically, this program is it.

I called the program [serserge](https://github.com/fantasyui-com/serserge) in large part because I only had a Raspberry Salad yesterday (Shredded Lettuce with Raspberry Preserves) as part of my extremely sophisticated diet, and here is the main [beef](https://github.com/fantasyui-com/serserge/blob/master/plugins/postcss-reconnaissance/index.mjs) that removes color related information: [beef](https://github.com/fantasyui-com/serserge/blob/master/plugins/postcss-reconnaissance/index.mjs). I can't believe this took six+ hours, maybe my daydreams are just longer. Hmm.
