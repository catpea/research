---
id: research-0094
title: Meow Radio Woes
category: research
tags: Programming
date: 2020-05-11T15:20:13.344Z
draft: false
deleted: false
---

I knew that Meow Radio will create problems.

I published it because it kind of works, and to get an idea of what I am dealing with here.

The **first issue** I came across was two poems playing at the same time, this is a class of problems called race conditions. And it arises here due to how long it takes to load a file.

The **second issue** is the pause between poems, that comes from loading it on a slow connection.

There is a another issue, playing audio in browsers can be tricky.
There are solutions and different approaches, but they are not mutually compatible and trying to make it so will ruin them all.

I have to find a framework and stick with it. The browser offers a thing called [Audio() class](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAudioElement/Audio),
and I have thus far been using [Howler.js](https://github.com/goldfire/howler.js#documentation)

I think what I need is a library that has been programmed with playlists in mind.
Many Browsers [have that](https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList) except for Samsung Internet, and I just want to create something that works everywhere. I remember using Samsung Internet before, as obscure and old as that thing may be, I want to solve problems not create them. And I think, I want the Playlist to be like the main concept, when somone plays poem #7 I want poem #8 to start preloading, and if the user hits shuffle, then I want the system to smartly preload the new next poem.

Once I create a fully working player, I may consider [selling it](https://codecanyon.net/search/player).

Plus this would make a neat Portfolio item as well.

I am now looking over [Awesome Webaudio](https://github.com/notthetup/awesome-webaudio) to check is someone coded a popular smart play-list aware player, if not I'll probably make it myself.
