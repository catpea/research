---
id: research-0091
title: Code Density Failures
category: research
tags: Programming
date: 2020-04-25T15:26:01.052Z
draft: false
deleted: false
---

I have spent an hour or two this morning experimenting with lowering code density by creating High Level Components out of HTML code.

This was a failure.

I created this neat and tidy range/slider where a user could select the number of seconds that a body building advice message should display for. And because it was a Component that stored a bunch of logic, I wasn't able to say: "Hey! when you change, then reset the current message timeout too." Without being able to say that, If a Body Building Advice is set to display for 2 minutes, and I change that to 1 second, it will take two minutes for that change to take place.

It would take no effort at all without Components, with components, I end up hoisting all kinds of optional eventualities for edge cases like this one.

There were multiple obstructions in the way.

Even on the graphic level. Bootstrap's Tab bar uses a background trick, that demands I set a background for a tab, so it can hide the selected tab bottom-border. They should not be using a trick, if tabs are not possible without CSS/HTML trick, then they should not be shipped.

In Svelte they would not allow me to do Svelte things on Components I created.

For example, I cannot say this button should be sent to a template slot named menu, it trows: "'slot' is reserved for future use in named slots"

Furthermore, I could not apply a conditional class on a Custom component as it would throw: "Classes can only be applied to DOM elements, not components"

So, I cannot create general purpose custom Bootstrap components.

I had a weird feeling about it from the beginning.

So now, I cannot create Custom Stores, I cannot create Custom Components.

Fair enough. The custom stuff is not part of the Svelte magic, and it is secondary on their todo list.

And I need to stick to what Bootstrap and Svelte are good at, and stop trying to twist/generalize things.

One example of me quietly twisting things is the card/app caption on the catpea.com homepage/dashboard it is a label and a button but not the Bootstrap way. Bootstrap's way would be either the tabs, or pill buttons, the first button would be the title, and second the little preferences icon.

CSS/HTML, Bootstrap/Svelte are not moving in a direction where code complexity can be squished.

I think that should be a meta-programming layer on top, layer I make with Sweet.

But even with a large meta-programming effort, I end up with this initial hoisting problem where edge cases cause a need to hoist optional things up top, they never get used but they do create a lot of code liability.

So, what I am left with here, is... that each app should be its own word, and should not demand any reusable Components.

This way, there are no obstructions, just open code, but it is hard to read code.

This is yet again a vote for a Visual Programming Language, where things are not divided into well defined components, but generally reusable snippets.

For now though, I'll keep things simple, and simplify the apps I have thus far wrote, rather than create Components out of them.
