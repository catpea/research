---
id: research-0088
title: 'Cat Pea News can be used with JavaScript disabled, and launch of Styleguide.'
category: research
tags: Programming
date: 2020-04-23T17:41:21.529Z
draft: false
deleted: false
---

It has been a long road to create an application like this.

While Cat Pea News is written in JavaScript, and JavaScript enhances the features, it is not required for operation.

When JavaScript is disabled, the sub navigation menu is displayed in a non-interactive mode. Everything still works, except for collapsing menus and and little future extras like that.

This is an advanced feature that most programmers don't even try to think about. I remember once reading a complaint by a programmer, and I paraphrase:

> "Imagine if someone was allowed to disable the electrical system in you car, and then complained nothing works."

Yeah, imagine... If we delivered base functionality without bloat and [Feature Creep](https://en.wikipedia.org/wiki/Feature_creep).

Tiny program, big feature. If I aimed to create a fast website for browsing content, I could actually pull it off.

Google created a whole technology for less bloated internet, but it is also designed for serving ads. It takes so little to create something like Cat Pea for no java-script browsers, that Google Amp's CDN networks layout/HTML worries kind of add up to creating a new ad platform. As their other benefits are easily reproducible with some foresight the non-js part of [Bootstrap](https://getbootstrap.com/) and basic [Svelte Sapper](https://sapper.svelte.dev/).

I kind of consider this little-big milestone the completion of the coding behind Catpea's News Site. Today is the real launch date.

Yesterday, I added that little [templating system](https://github.com/fantasyui-com/news/blob/master/add.sh) that just helped me to create this post by running `add research`, and I like that too. This is a third post that I created with it.

I also begun work on documenting changes I make to Bootstrap. This is a project that is happening on catpea.com, rather than the news site, and it is under [https://catpea.com/styleguide/](https://catpea.com/styleguide/) It is a horrible mess right now, with sample code. This will become the primary documentation for the Cat Pea Theme. The big deal behind it is that I keep graphic instructions next to structure of content the graphic instructions decorate. It will quickly become a long document with useful little recipes for UI building.
