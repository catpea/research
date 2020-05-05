---
id: research-0060
title: >-
  I Finished Laying Down The Groundwork For Components As Predicted There Is
  Wisdom In Following Bootstraps Conventions The...
category: research
tags: Programming
date: 2020-04-08T16:28:09.783Z
draft: false
deleted: false
---

I finished laying down the groundwork for [Bootstrap](https://getbootstrap.com/)+[Svelte](https://svelte.dev/) components. As predicted, there is wisdom in following Bootstrap's Conventions. The code is short, clean and lightweight.

I only styled the big grid in [CATPEA DAW](http://catpea.com/daw) this is a lot of work, or at least getting it off the ground initially was a lot of work. Now that I know how to structure things, things will move faster.

![Gui 5](image/research-0060-gui5.png)

Fully Styled Component

Here is the [graphics programming language](https://github.com/fantasyui-com/catpea-com/blob/b79570e6459d128d3ecb79ed478ffe65fb23759c/src/style/daw/daw.scss) and the [actual code of the musical form component](https://github.com/fantasyui-com/catpea-com/blob/b79570e6459d128d3ecb79ed478ffe65fb23759c/src/components/song-machine/Form.svelte) it is very compact, but there are multiple layers of programming conventions here, ew, ew.

I should add that this grid is where the user structures a part of a song, for example The Intro. Each cell in here represents about 16 notes that can be inserted. But also, once the user establishes those 16 notes, they only need to worry about lighting those buttons up, it is always the same 16 notes per row... they just select where those notes are active. And beneath this grid is a list of instruments, and places where those 16 notes go. If the user places sharp-drums as the first instruments, selects all 16 note-spots, then it will play tsk-tsk-tsk-tsk-tsk-tsk-tsk-tsk-tsk-tsk-tsk-tsk-tsk-tsk-tsk-tsk BUT ONLY IF THE cell in the thing pictured above is lit. So this grid is an activator of melodies. Which are created in the thing pictured below:

![Gui 6](image/research-0060-gui6.png)

Yet Un-styled Melody Maker Component
