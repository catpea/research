---
id: research-0093
title: Meta-programming Layer for Reactive Systems
category: research
tags: Programming
date: 2020-04-28T19:32:39.556Z
draft: false
deleted: false
---

For the past few weeks, I have been looking over reactive "languages", languages that automatically react when their data changes, and most often update their UI.

They each have a different way of connecting with the programmer. And this "way" is the problem, that I've been attempting to research.

So I finally came up with an idea worth trying out and that is creating a meta-front-end, a sugar layer on top. Here is a very rough sketch of a syntax conducive to creating reactive applications.

    <application>
    
    
      <database id=bodybuilding url="bodybuilding.json"/>
      <interval seconds="{interval}" min="0" max="{bodybuilding.length}" step="1"/>
    
      <card>
    
        <header array="Advice, Preferences"/>
    
        <body if="advice">
          <text string="message"/>
        </body>
    
        <body if="preferences">
          <range id="interval" min=0 max="120" step="1"/>
        </body>
    
        <tail>
          Showing body building advice #1, out of 50.
        </tail>
    
      </card>
    
    </application>

This "code" represents about 90% o that little bodybuilding advice application on catpea.com.

And I think that is as far as I would like to go. From here the programmer would click a button and generate code for Svelte, possibly React. This would solve all Component problems, stuff like re-usability, and nesting, and template slots.

What I like about this is that it is basically a code generator, and not a language. It is trivial to make, and the end result would be a huge folder full of files, and properly setup configuration stuff.

It seems to be a fair bet that this Meta-programming layer would target Angular, React, Svelte, Vue and few others.

And that would be very useful for presenting Small Application Starters in multiple languages. Here I am thinking about Bootstrap Themes, again.

Anyhow, this solves my only problem with Reactive Programming, lack of a fast programmable front-end language. Rather than looking to research another Svelte like framework/compiler, I can focus now on creating little snippets of code that will give me the brevity I want, and give Svelte/React the jumps they need for their hoops.

I've been meaning to create a new program on Catpea, [The Bootstrap Card](https://getbootstrap.com/docs/4.0/components/card/) Builder, and since I am going to be dealing with little snippets of code, I maybe running some tests of what it would take to turn into [actual nav tab card code](https://getbootstrap.com/docs/4.0/components/card/#navigation)

One thing that comes to mind is creating an editor where I can easily store composable snippets and connect them to [specific versions of Bootstrap](https://getbootstrap.com/docs/versions/), for example.
