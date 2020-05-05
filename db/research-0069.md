---
id: research-0069
title: >-
  I Had To Disable Automatic Color Changes I Am Using A System Here That Takes A
  Snapshot Of The Code And Uploads That Snapshot...
category: research
tags: Bootstrap Programming
date: 2020-04-11T16:10:41.703Z
draft: false
deleted: false
---

I had to disable automatic color changes. I am using a system here that takes a snapshot of the code, and uploads that snapshot to catpea.com, that snapshot is shown to you before the real code loads. This helps the search engines process data, it improves load times by a huge amount. When I generate a website at noon, it will be bright, when I generate it at night it will be dark, this introduces complexity to something as silly as night mode. I just have the night mode run in manual now. By default the website is bright, and if the user clicks the light bulb it will switch to dark.

It is a fun problem, it actually asks for User Preferences, where the user can put website coloring in manual.

There is a technological problem lingering here, unfortunately. I can only animate transitions to dark. The system us unable to smoothly transition back to bright. This is a problem with [Bootstrap](https://getbootstrap.com/)'s color information. Colors are so different from layout, that they should live in their own file, with their own programming. In Bootstrap 4.5.x this is not the case, and the code is ugly. In 5.0 they maybe fixing this (I am guessing), but it will forever be their solution, and they are unlikely to focus on nice to haves like smooth animations between color modes

I need to take over [Bootstrap](https://getbootstrap.com/)'s Colors. This is not easy. But I've done it before. I nuked all the color declarations and automatically built a separate color file. It was a sophisticated, but primitive experiment. But automatic color declaration removal is critical, as Bootstrap changes their code all the time. With each new version I have to revise my code, that's not cool. With automatic processing, that will be much easier.

See, coloring is not just about making a pretty scheme, it is a hard problem, and it requires hard programming, like parsing the SCSS code-base, deleting declarations in the Abstract Syntax Tree (AST), then dumping it back into a mere bootstrap.scss file. Then programming a general purpose coloring system capable of accounting for all the missing colors. I am going to leave this for later, automated processing is never without problems. Goodness knows, Bootstrap is trying to keep the colors kind of outside of the main coed base, but the functions that apply colors are still un-uniform and deeply burred.

To be realistic about what can be achieved in the [Bootstrap](https://getbootstrap.com/) 4.0.x - 5.0 realm, I think I can only change the HUE, I can go from their blue to Orange, but I can't make the orange too dark, or too bright. This still solves the coloring problem, it is an extremely simple and effective solution

There is yet another way of looking at color, and that is seeing it in relation to how readability is impacted. It would be possible to go from White-on-Blue to White-on-Yellow, so as long as I carefully calculated [wcag-contrast](https://www.w3.org/TR/WCAG20-TECHS/G18.html), and altered the yellow to be within the same (or similar) range as blue.

Playing with color now.
