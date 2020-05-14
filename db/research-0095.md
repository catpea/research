---
id: research-0095
title: Radio Meow Updates and Svelte Woes
category: research
tags: Programming
date: 2020-05-12T21:44:48.316Z
draft: false
deleted: false
---

I just got the poem/audio file download tracking done.

I simulated a slow 3G connection and downloading those little files took a while.

I am now getting full download feedback information (bytes downloaded thus far, and total bytes to be downloaded, delivered at reasonable time intervals) as I use a generic file loader, not one with a concept of skipping around a long video file and downloading little snippets here and there.

***

I am running into issues with svelte, limitations.

Svelte is still great for making apps, but application brains need more.

It may just be that all we can do with Svelte, React, Vue, and Angular is User Interfaces, no more, never more.

In that case, the code inside Svelte is not JavaScript but Memory Programming Code, or Application State Programming Code.

Downloading Files, Performing Operations would be best handled by external libraries, and ones that behave like those that come with the web browser (very standard and boring).

And then, once data is ready, over in Svelte side one simply says:

```JavaScript
mitt.on('complex-processing-got-done', hereisthedata => {
  playlist[5].data = hereisthedata
})
```

Svelte will understand "playlist[5].data" and update the User Interface automatically, but the process of creating "hereisthedata" needs to be far and away from Svelte as it gets confused.

This sounds very resonable, but now I have to add,

```JavaScript
mitt.on('complex-processing-got-done-download-progress', {total, thusfar} => {
  playlist[5].meta.total = total;
  playlist[5].meta.bytes = thusfar;
})
```
And the promise of Svelte was that I never had to worry about any of this, it was supposed to happen automatically.
