---
id: research-0054
title: Dealing With Incompatible Systems
category: research
tags: Programming
date: 2020-04-07T13:41:39.748Z
draft: false
deleted: false
---

There are some anomalies in this system but they are easily dealt with.

This morning I've been researching the combination of technologies behind the collapsible Navbar on the top of the page.

The reason why there is complexity here is screen size reporting, the navbar is structured by a non-programmable language, kind of an automatic language.

There is no way to say "Oh, the screen size is this much, I'll do this here, then do that there. Instead what is said is screen size small collapse menu. And nothing else can be said." With [Svelte](https://svelte.dev/) something must be added, svelte has a particular way of approaching animations.

That means the existing navbar and svelte/programming-framework are incompatible, cannot work together.

The existing navbar must be removed, and new one must be programmed in.

This is a large project because of how important compatibility among devices is in this context (main menu can't fail, otherwise the whole website is broken). BUT! If we allow that [Bootstrap](https://getbootstrap.com/) the existing UI framework I use here is a suggestion and collection of snippets. Then, most of this work is already done, I just have to copy Navbar. I'll create a new program, name it Navigator, and start with the Navbar code base.

Eventually [Bootstrap](https://getbootstrap.com/) people will alter their programming to catch up with technologies like [Svelte](https://svelte.dev/) and then I'll be able to go back to using the standard Navbar.
