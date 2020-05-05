---
id: research-0055
title: The Navbar Kerfuffle
category: research
tags: Bootstrap Programming
date: 2020-04-07T18:43:22.379Z
draft: false
deleted: false
---

When on Mobile/Tablet (or in a small Desktop Window) Website Navigation collapses and shows an open icon (three lines), now when clicked it will open very smoothly. Previously it just popped into existence (I am not a fan of animations like that, but it tends to be a mark of good programming.)

I continued researching the Navbar issues, and I discovered bootstrap can't make it work without programming. There is no way to transition the menu from height:0pixels (closed) to height:auto (open) because the underlying language does not concern it self with the measurement of what auto actually means. There are no reasonable ways around it. They are stuck using a [big program](https://github.com/twbs/bootstrap/blob/master/js/src/collapse.js) for it. And by big I mean 433 lines of code.

Let me tell you how many lines my program has.

[ZERO](https://github.com/fantasyui-com/catpea-com/blob/d12cb893c59f447a94b5146c003f457e0122bab8/src/components/Nav.svelte#L2-L4) (the three lines are configuration/maintenance not real code)

![Wee](image/research-0055-wee.png)

Woo! No Code

The framework I use comes with the collapsing animation built in.

When I say that [Bootstrap](https://getbootstrap.com/) is behind in programming, they are, they really are. [Svelte](https://svelte.dev/) has a superior animation subsystem, and there is nothing to compare here.

In the morning I felt that [Navbar](https://getbootstrap.com/docs/4.4/components/navbar/)\-[Svelte](https://svelte.dev/) integration was problematic, now having taken a closer look, I find their [big program](https://github.com/twbs/bootstrap/blob/master/js/src/collapse.js) is the problem here.

Bootstrap is currently at version 4.4, they are already making big changes for 5.0. I am not the first to notice that their JavaScript is a problem, they will catch up.
