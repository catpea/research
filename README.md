# Research

## Meta-programming Layer for Reactive Systems
### April 28th 2020, 3:32:39 pm EDT
<meta itemprop="dateCreated" datetime="2020-04-28T19:32:39.556Z">

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



## Svelte is not a component system, look to pre-processors (PostHTML) for such.
### April 26th 2020, 2:00:57 pm EDT
<meta itemprop="dateCreated" datetime="2020-04-26T18:00:57.744Z">

I found a new way to Component-ize code, rather than using any Programming Language, it maybe possible to use a pre-processor stack approach.

The stacks are a very flexible tangent and may actually call for use of XML (an HTML super-set) and XSLT processors (XML mangling language), it would be nice and clean, but I would need to create a lot of stuff myself, data observers/proxies, life cycle management, and all that.

It is a fun project, but there is nothing fun to show for it. No, fun stuff just code, and bunch of re-factoring needs. I'll put this on the back burner.

I rebuilt the Bodybuilding Advice Widget from scratch, without worrying about code density, or code liability, and it was pleasant, educational, enlightening. Bodybuilding Advice Widget is my way of testing Svelte Complexity and potential for Component Systems.

Bodybuilding Advice Widget is also a test of close I can come to satisfy Bootstrap Theme requirements. If I don't create components, I end up creating Bootstrap Snippets, which is very good, it is in part what they are looking for.

My Final Verdict on the subject of Svelte is that is is not a Component friendly Framework. There is however potential in pre-processor stacks like PostHTML, and plain old XML/XSLT, but since I was only reviewing [Svelte](https://svelte.dev/), the rest is outside of the scope of this Quarantine.



## Code Density Failures
### April 25th 2020, 11:26:01 am EDT
<meta itemprop="dateCreated" datetime="2020-04-25T15:26:01.052Z">

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



## Watching the paint dry, Reactive/Dynamic Timestamps
### April 24th 2020, 12:46:36 pm EDT
<meta itemprop="dateCreated" datetime="2020-04-24T16:46:36.024Z">

Well, I woke up, looked at my screen and the time stamps were off. Cat Pea News was open on my screen and, it makes sense that all time stamps need to keep perfect time.

Ok, so I went back on what I said yesterday, I removed the custom Svelte store I wrote, and simplified/duplicated code and got that simple Svelte syntax back. With the simple syntax, I rewrote time-ago (ex: Updated 1 hour ago) everywhere, including categories, which track time of the latest post, there is category layer above that that stores that time, it is like a double update:

1.  I first scan the database updating the ago text for each post.
2.  I make a category database, and update that when cost ago stamps change.

While I was doing this, it occurred to me that I should use a top down component model. Meaning, data lives on top, all the changes happen to it on top, and then data cascades down into all the pages, and then, page components.

Normally, that's how applications are made. But Cat Pea News, is not just Svelte, it is also Sapper a static file server...

And of course the point being, that no JavaScript is needed to read news.

So, google can index my content archive.org can mirror my content, and they don't need to execute my JavaScript.

It is just the principle alone: If a website is not a Dynamic Application, it should not require JavaScript for operations.

As I mentioned yesterday, the time ago feature of posts is disabled in a no JavaScript environment, and friendly Date appears.

My demand for a Non-JavaScript website, and my use of Sapper, skewed my research into Svelte.

I am not ready to complain about it yet.

Cat Pea News is too unique.

The fancy thing is, I learned a lot about Svelte, yeah, so when I come back to dynamic applications NO CUSTOM STORES (custom memory/database work) because that does not get equal treatment under svelte and forces special syntax, and cascading requirements.

It appears that Custom Svelte Stores are my only real problem. If use the Top Down application architecture, then I don't have that problem.

Svelte Sapper is best for applications, and it is better than everything else for static websites.

This is still the best in everything, but it is not the Perfect Compiler I expected.

It helped me define my expectations as well.

I want reactive data, reactive CSS, reactive HTML, and I want it all to keep to JavaScript, XML (HTML), CSS conventions.

These parts are so complex, that their interaction would require months of research.

It is amazing how many clever ideas span the [Svelte](https://svelte.dev/), [React](https://reactjs.org/), [Vue](https://vuejs.org/) and [Angular](https://angular.io/) universe.

Maybe, the correct solution to Applications/Websites is not all code. But it will require Visual Programming Tools. With another abstraction layer over a programming language, the gravity of code duplication, meta-programming, documentation, maintenance shifts and may a allow a perfect programming language, but that is far and different universe, it has nothing to do with Svelte.

It is worth mentioning that I looked at [Sweet.js](https://www.sweetjs.org/) this morning, as I sometimes do. It is meta-programming or super-programming for JavaScript, and I was able to define one property of a proper language: LOW CODE DENSITY. This means that the language is suited for the task at hand and need not be twisted. Custom Stores in Svelte cause twisting:

![T 1](image/research-0090-t-1.png)

In React, a three line example is enough to show twisting:

![T 2](image/research-0090-t-2.png)

With meta-programming, with super-programming that code can reduced to a single clean statement. And meta-programming will work for all languages. Svelte uses meta-programming, the layer for custom stores is just not complete, or or is meant to be more flexible.

Maybe, Low Code Density, or Untwisted Code can only be achieved on per project basis, and only with meta-programming.

After all Svelte's Might is the Meta Programming setup.

I a glad I mention [Sweet.js](https://www.sweetjs.org/) here.

Then there is the question of HTML vs Flex/Swing, or question of Containers and Components like old [Dojo](https://dojotoolkit.org/) is/was [doing](https://dojotoolkit.org/documentation/tutorials/1.10/dijit_layout/). A high level nestable container framework would cut down on UI code considerably. Combination of Meta Programming (to obscure reactive boilerplate) and Components/Containers could potentially create a Rapid Application Development platform with code worth reading. A sane Visual Programming Environment on top of that, could really speed up large application development.

Back to Applications, and goodness I need to make a Raspberry Lettuce Salad for lunch.



## Proper Timestamps
### April 23rd 2020, 7:37:00 pm EDT
<meta itemprop="dateCreated" datetime="2020-04-23T23:37:00.693Z">

I had to rewrite a bunch of code to prefix variables with a dollar sign, that is a huge problem for Svelte adoption.

This person ran into the [same problem](https://stackoverflow.com/questions/60045404/svelte-read-nested-store), it is hard to form an opinion on the matter as I am still learning svelte.

There are other much smaller anomalies.

And then the issue of the graphic language (CSS) not being dynamically editable.

Svelte is still the best framework, but I think another one will evolve from Svelte.

The two or three leading Svelte ancestors (in general, not approach wise) [Angular](https://angular.io/), [React](https://reactjs.org/) and [Vue](https://vuejs.org/), are even worse.

This small svelte problem, is still nothing compared to the mess [React](https://reactjs.org/), [Vue](https://vuejs.org/), and [Angular](https://angular.io/) are creating.

Svelte is an important experience, because it has unearthed the future of all programming.

But, today writing code for Svelte, is just that. I will not be able to use Svelte code in future JavaScript code.

Someone did a nice write up [here](https://github.com/feltcoop/why-svelte), much better analysis than mine.

It is 2020, things should be further along than this.

Anyway, 98% of Svelte+Sapper is good, my concern is that they will fail to follow JavaScript development path, and conventions, and the newer version will have more of the [same problem problems](https://stackoverflow.com/questions/60045404/svelte-read-nested-store).

Cat Pea News, however is doing great, not when JavaScript is disabled the _Time ago time-stamps_ fall back on normal dates, as they can't be calculated since dynamic programming is off. This took very little work. It is the same code-base, but when there is no programming in the browser, dynamic features fall back, and look great!

Here is an example of the "ago time" calculation:

![Nojs 1](image/research-0089-nojs-1.png)

And here is what hapends when that catculation can't be made the browser has disabled JavaScript:

![Nojs 2](image/research-0089-nojs-2.png)



## Cat Pea News can be used with JavaScript disabled, and launch of Styleguide.
### April 23rd 2020, 1:41:21 pm EDT
<meta itemprop="dateCreated" datetime="2020-04-23T17:41:21.529Z">

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



## Color Themes in Bootstrap, and Post Templates in Bash.
### April 22nd 2020, 7:59:52 pm EDT
<meta itemprop="dateCreated" datetime="2020-04-22T23:59:52.233Z">

I had a piece of bread with my Raspberry Salad today, I've been programming like a madman.

I created couple of commands to update the [github mirror of my posts](https://github.com/fantasyui-com/news/blob/master/README.md), it has a little [templating system](https://github.com/fantasyui-com/news/blob/master/add.sh) in [Bash](https://www.youtube.com/watch?v=2hz7-v2f1sA), so I can say:

add poem<br>
or<br>
add research

and it will create a post blank with a proper time-stamp and id. Ready for poems, and long winds, as they say in Wales.

And I updated the [Palette Tool](https://catpea.com/palette) on [Cat Pea](https://catpea.com/) to crank out pretty gosh darn readable Color Themes, here is an abstract montage of Purple Dark Pastels, Green Trinity Matrix, and desaturated Blue Navy.

![Multicolor](image/research-0087-multicolor.png)

I still have to adjust a tool that makes use of that data over in [news.catpea.com](https://news.catpea.com/), but it is all looking pretty good. Here is a [mirror of this post](https://github.com/fantasyui-com/news/blob/master/posts/id127.md) on github.



## UI Component Upgrades
### April 21st 2020, 3:40:33 pm EDT
<meta itemprop="dateCreated" datetime="2020-04-21T19:40:33.604Z">

Got around to working on typography and layout.

Things look good, I tested it on desktop and mobile, very little needed reprogramming to work well on mobile.

I am learning [Bootstrap](https://www.youtube.com/watch?v=FtXd_qQJgfI) I now know what a Theme is (Colors, configuration tweaks, nothing more).

And a Theme has second part that is like an extra attachment, and that's various little useful layouts, snippets, templates. The second part is a very important extra.

With [Vue](https://www.youtube.com/watch?v=FtXd_qQJgfI) and [React](https://www.youtube.com/watch?v=0KlRgFEEz0g) being too alien for real development, [iQuery](https://www.youtube.com/watch?v=JjIvF0yikGU) dying, [WebComponents](https://www.youtube.com/watch?v=R9o9js_HKwc) being too far away, [Svelte](https://www.youtube.com/watch?v=ws97Etvs-Qs) or a framework like it will triumph. Moreover, Svelte already compiles to WebComponents, and WebComponents will forever lack (by default) a good automatic data to UI updates, because they are not designed to make programming reasonable, unlike Svelte.

These important Theme-Extras therefore, must be written in Svelte. And Cat Pea, is a prime example of what an Extra would look like. All those little boxes, little menus, little drawers, bits of Music Making, Bodybuilding Advice, all of that are snippets of code that will make this theme sell. The news site, is not a good snippet, it should be included, but it is too monolithic, it is just buttons for browsing posts.

I will need to redesign Cat Pea with that in mind, so my programming adventure is also making a tiny product for [Bootstrap Themes](https://themes.getbootstrap.com/). Anyhow, here are the newly added UI improvements.

Here is the new Home Page, it looks like an App, because the user is browsing All Posts at first. I think it would be better to create a Home Page that first opens to 5 latest posts, and I may do that later.

![News Update 1](image/research-0086-news-update-1.png)

This is Category View, it is a lot cleaner, but it is very busy. I basically turned 3 words (Research, Quarantine, Theme) into a web page, but this is probably more sustainable as far as writing a lot of articles goes.

![News Update 2](image/research-0086-news-update-2.png)

And this is what reading a post looks like now. I'll have toggle tat off into a mini miniature, I'd like to see just the post here, I'll add a "Quick Nav" box and when that's opened the quick navigation features will show up. Reading a post should just be about a post.

I like the Listen button, and I like the fact that it fits well on the home page.

![News Update 3](image/research-0086-news-update-3.png)

The one big change is that there is no more Player, the user has to click the button to see it. This is because every browser has it's own player. The stablest method is to add the button that just links to the mp3 file.

I also setup an external repository for my writing over on [Github](https://github.com/fantasyui-com/news) it is not easy to navigate, but if I ever lose catpea.com domain name, or github is down, or technology changes, there is always this external master that has all the text and poems and my [recordings](https://github.com/fantasyui-com/news/tree/master/poems) mostly accessible. I want the 70 year old me, to be able to access this and be really embarrassed and filled of regret about how he wasn't a serious person when he had a chance. The heck with that guy.



## User Interface Updates
### April 20th 2020, 5:37:20 pm EDT
<meta itemprop="dateCreated" datetime="2020-04-20T21:37:20.115Z">

I made the UI a bit easier to follow, there is still a bunch of work to be done.

There maybe some broken links, but I think I got it all.

I continue learning how to use [Bootstrap](https://getbootstrap.com/) without twisting things around. I want to be able to create Themes that are Interchangable. That kind of programming is hard to get used to.

I've been somewhat quitet about my research becasue I was just programming the news site. Now the Tag/Category system will allow me to post Philosophy, Songs (that I may sing, eek) my music, bicycle adventures, and all kinds of things.



## Whoo Hoo! News Launched
### April 19th 2020, 8:09:23 pm EDT
<meta itemprop="dateCreated" datetime="2020-04-20T00:09:23.684Z">

I am still getting used to it but it looks pretty neat. I coded the whole thing from scratch, haha.

It reminded me of my days programming [CGI](https://www.youtube.com/watch?v=9Zx1vEmaQMc) in [Perl](https://www.youtube.com/watch?v=E2JJZVqe97I) I kind of miss that.

I am writing this in my text editor, in the [Markdown](https://www.youtube.com/watch?v=f49LJV1i-_w) format.

![Md](image/research-0084-md.png) [zoom](image/research-0084-md.png)

That's what I used originally but I wanted to see what would happen is I stored my notes in code. I liked it, but it was not portable across systems.

Too many things change in code, research notes have to be much simpler. And they have to be [readable](https://github.com/fantasyui-com/news-catpea-com/blob/master/db/content/posts/id121.md) outside of any programming language. Github does make this possible, by supporting markdown, I'll just stick with the Markdown format from now on.

I'll probably create a separate repository [for just my posts](https://github.com/fantasyui-com/news-catpea-com/tree/master/db/content/posts) and do the same for my little book.



## News on news.catpea.com has a functional category browser.
### April 19th 2020, 1:22:14 pm EDT
<meta itemprop="dateCreated" datetime="2020-04-19T17:22:14.849Z">

I continue working on [news.catpea.com](http://news.catpea.com) I added categories and little navigational hints, and timestamps.

I want to create a new category, poetry. But I don't want to mix it with quarantine, yet.

So, I guess, the news site will have a category browser with strict rule, one post per category.

And Then I'll add tags, where the user can browse all posts tagged poem for example.



## System Upgrade
### April 18th 2020, 6:07:44 pm EDT
<meta itemprop="dateCreated" datetime="2020-04-18T22:07:44.063Z">

I continued working on [news.catpea.com](http://news.catpea.com) and actually made very good progress.

I wanted to pull the poems out of code and give them an alternate version that can be easily read via github.

Here is the [result](https://github.com/fantasyui-com/news-catpea-com/blob/17041ee955dacdf17c1f5f7c706bd1bbbd8b3060/db/content/posts/aquamarine-sandybrown.md), it is not pretty, but it is pretty readable.

Now I can continue with making [news.catpea.com](http://news.catpea.com) look nicer, I am missing some icons, and i want to allow browsing by category (research/quarantine) so that with a click only poems will come up.



## Working on news.catpea.com
### April 17th 2020, 3:45:54 pm EDT
<meta itemprop="dateCreated" datetime="2020-04-17T19:45:54.868Z">

I setup [news.catpea.com](http://news.catpea.com) a bit early than I wanted to, I'll upload all the photos, research and poems on there.

I need something that is less application and more website to try out less boxy designs.

Before I can make a product for [Bootstrap Themes](https://themes.getbootstrap.com/) I feel have to create something that will qualify for [Bootstrap Expo](https://expo.getbootstrap.com/) at least in theory.

[Theme](http://catpea.com/theme) Styleguide is neat, but I now need something like this: [https://getbootstrap.com/docs/4.4/examples/](https://getbootstrap.com/docs/4.4/examples/) about nine web page designs.

At the time of writing there are nine menu items (Quarantine Log, Research Blog, Book, Videos, Wall, Palette, Theme, Designer, and Composer), so it would be pretty neat to present components of catpea as templates.

This is really helping me learn about design, and it is keeping my programming skills sharp.



## Styleguide Updates
### April 16th 2020, 9:02:46 pm EDT
<meta itemprop="dateCreated" datetime="2020-04-17T01:02:46.761Z">

I expanded the [Theme](http://catpea.com/theme) Styleguide to include many more components, and gave everything night mode support.

If you click the lightbulb and browse [Theme](http://catpea.com/theme) all the color information will be washed away, and things will look all military Zero Dark Mango Tango.



## Theme rebuilt, syncing up with Bootswatch
### April 16th 2020, 3:25:33 pm EDT
<meta itemprop="dateCreated" datetime="2020-04-16T19:25:33.766Z">

I have rebuilt the theme, the third time. This time it follows the programming pattern of [Bootswatch](https://github.com/thomaspark/bootswatch/).

It feels quite right.

Night more is simple and powerful.

I fixed the big bug that was crashing the site. Github servers won't serve files prefixed with an \_underscore.

Some of my libraries here use that here (not my code) and it is really hard to predict when some program will pull in a library that has files beginning with an underscore.

The overall site is getting sluggish, I may need a real blog program, I will probably run it under blog.catpea.com and probably go craaaaazy with typography.

I updated the [Theme](http://catpea.com/theme) page and it is starting to look pro.

Once I setup blog.catpea.com (in days or few weeks) catpea.com and blog.catpea.com will share the [Theme](http://catpea.com/theme) design.

It will be a great test of usefulness.

Whews.



## Designing Energon Cubes
### April 15th 2020, 5:29:22 pm EDT
<meta itemprop="dateCreated" datetime="2020-04-15T21:29:22.387Z">

![Energon 1](image/research-0078-energon1.jpg)

Transformer Robots Eat Energon... or something

![Energon](image/research-0078-energon.jpg)

And walk on it... sometimes.

I gave [Designer](http://catpea.com/designer) a big upgrade, it now not only generates standard CSS, but the much needed [Sass](https://sass-lang.com) CSS (known as SCSS).

This is huge, because I can copy code from [Designer](http://catpea.com/designer) and paste it into [Bootstrap](https://getbootstrap.com/) and it will just work. After the code is in Bootstrap, it takes one line to use it.

Here is what the Sass code for one of the presets (Energon) in [Designer](http://catpea.com/designer) looks like:

![Energon 2](image/research-0078-energon2.png)

Energon: Installation

And here is what it takes to use it in some design:

(.card.energon means a card that has been marked as being of type energon, and a card is the boxes I use on the homepage. Card design comes from the Bootstrap team.)

![Energon 1](image/research-0078-energon1.png)

Energon: Usage

And here is a crazy looking, but SUPER SERIOUS test. I am exporting information to multiple programming languages, JavaScript, CSS, and Sass. And in the case of Sass, I need to pass CONFIGURATION VARIABLES so that the customers can tweak them. I can't calculate the colors at all. That means, the Math for CSS and JavaScript has to match the Math for Scss.

This is Applied Color Theory...

I used calculations over [HSL](https://www.youtube.com/watch?v=NAw2_NtGNaA) for all three (CSS, JavaScript, and Sass) and it worked. For example Saturation of 0.5 in JavaScript, means the same thing that Saturation of 0.5 in Sass. But they each have a different way of expressing that. In JavaScript I say '\*'+(0.5+1), and in Sass I have to say ((0.5\*100 )/2).toFixed(1)

![Energon](image/research-0078-energon.png)

Energon Cubes: Crazy Design

And when all is said and done Compiled [Sass](https://sass-lang.com) and [Designer](http://catpea.com/designer) preview, match pixel for pixel, because of my use of [HSL](https://www.youtube.com/watch?v=NAw2_NtGNaA) Color Model. The code for both is written by different programmer for different languages.

And there is no way a person will get far, without some visual tool like the [Designer](http://catpea.com/designer).

Manipulating colors is such a freaking delicate operation, a 5% difference in Saturation and Brightness can either make a design, or make it look off and crappy.

There is no creating something like the Energon Experiment with a visual preview. Something as silly and useless as Energon required four separate revisions, to adjust blur/spread and colors, and the base color. It is just not possible without a tool.

A lot of Programmers/Designers use the browser as it has some preview/editing features.

![Bp](image/research-0078-bp.png)

Browser Can't help with Sass SCSS for Bootstrap

But how the heckedy heck to declare/extract variables, and generate Sass's SCSS code, that's not possible in the browser - lyke at all.

![Calc](image/research-0078-calc.png)

Still doing math in Sass

The code in Sass is still going to do some math based on the settings.

![Setings](image/research-0078-setings.png)

User's Settings

And the settings exists so that the user/customer can tweak things, they aren't really interested in building a new design, just making a slight alteration that makes sense in their business context.

One such example is removing the top-right highlight, or darkening the bottom-most blur/drop shadow to match their webpage-background.

![Box 4](image/research-0078-box4.png)

View of the different things at play.

Now I need to make some serious presets that will get me closer to a more serious design:

![Real](image/research-0078-real.jpg)

Serious Design



## Is Working Out The Tool Was Needed Because Of How Many Tiny Adjustments Are Required To Make Faux 3 D Out Of Mere Shadows Res...
### April 15th 2020, 10:34:27 am EDT
<meta itemprop="dateCreated" datetime="2020-04-15T14:34:27.831Z">

[Designer](http://catpea.com/designer) is working out. The tool was needed because of how many tiny adjustments are required to make faux 3D out of mere shadows.

![Button](image/research-0077-button.png)

A button in the wild.

[Designer](http://catpea.com/designer) generates ready to go CSS code but that is not what [Bootstrap Themes](https://themes.getbootstrap.com/) will want, I have to generate special code that integrates with their color system.

Further more, the button shown above is too big, to anomalous, and can only be used for special occasions.

But, I still need to style default bootstrap buttons.

![Bb](image/research-0077-bb.png)

Default Bootstrap Buttons

So, I have to be a lot more delicate with my design, making only tiny subtle changes. And then the raised 3D button I created are treated as Bonus Extras.

More than writing code, I need to tap into Bootstrap's Module System, their standard library. I need to create a Bootstrap Extended Library, and the functions contained there in, will be injected into Bootstrap's own buttons.

INJECTION IS SIMPLE, in a world where I am dealing with a static program, this is not this world. I am dealing with up to 10 versions of bootstrap ([Bootstrap Versions](https://getbootstrap.com/docs/versions/)), so all code modifications on my end must be automated \[serserge\] will take care of it, entirely.

Having said that, that is is about a two year long project, realistically, I may have some neat things, in a few days, but I have to begin programming, for a Team of Developers. I need to put on my manager hat, and begin preparing this Theme project for multiple programmers to help me finish.

This is pretty fun, it is cool.

There is a program called WordPress, they are like a blogging platform. And they support WordPress Themes.

What I need to do, is create a Bootstrap Theme, in such a way, that somebody can plug in my Bootstrap Theme into their own Bootstrap Based WordPress Theme, and it will just work.

It is a lot constraint, restriction, and direction. But pretty fun as well.

So with this post I will launch a third blog (in addition to Poetry and Research) and begin musing about Theme Development. I would like this blog section to be bundled with the theme (or along side it) as a kind of a proof of development, and quality.



## Initial Commit
### April 15th 2020, 9:01:26 am EDT
<meta itemprop="dateCreated" datetime="2020-04-15T13:01:26.880Z">

Begun work on Theme.

I want it to be heavy, decorated with 3D-like features.

Initially want to restyle default bootstrap classes, without introducing any bonus extras.

I want to keep compatibility with [Bootswatch](https://github.com/thomaspark/bootswatch/).

This theme needs to be a drop-in replacement for standard [Bootstrap](https://getbootstrap.com/) and [Bootswatch](https://github.com/thomaspark/bootswatch/) themes.



## I Just Finished Another Upgrade For And It Can Make Ice Cream Now I Also Made A Couple Of Profiles Lemon And Blueberry To To...
### April 14th 2020, 8:20:18 pm EDT
<meta itemprop="dateCreated" datetime="2020-04-15T00:20:18.443Z">

I just finished another upgrade for [Designer](http://catpea.com/designer) and it can make Ice Cream now. I also made a couple of Profiles (Lemon and Blueberry) to toggle between and the transition is animated.

![Icecream](image/research-0075-icecream.jpg)

Making Ice Cream

This tool should be enough to begin with interesting UI Themes.

![Tool 1](image/research-0075-tool1.png)

Updated User Interface

Just to remind, my aim is a product on [Bootstrap Themes](https://themes.getbootstrap.com/) that looks something like this:

![Real](image/research-0075-real.jpg)

What I need to start building.

But the [CSS](https://www.youtube.com/watch?v=gT0Lh1eYk78) language is not happy about making 3D things, and artful little digital frescos, so I have to make a few little tools.

To celebrate this little programming milestone I temporarily added the "Heavy Metal" [Designer](http://catpea.com/designer) Preset to all boxes on CATPEA.

![All](image/research-0075-all.png)

Looks Interesting

![Interesting](image/research-0075-interesting.png)

Looks Interesting



## I Am Still Working On I Found Some Graphic Artifacts With Yesterdays Approach Now I Am Creating The 3 D Raised Effect With Dro...
### April 14th 2020, 3:16:55 pm EDT
<meta itemprop="dateCreated" datetime="2020-04-14T19:16:55.040Z">

I am still working on [Designer](http://catpea.com/designer) I found some graphic artifacts with yesterday's approach, now I am creating the 3D raised effect with Drop Shadows, rather than inner shadows.

This means that I can color the inside of the box with a bit more creativity.

[Designer](http://catpea.com/designer) is still in early stages, I have to add profile support, probably restructure the flow control as well. But it will forever solve the problem of 3D raised boxes in themes.

![Box 1](image/research-0074-box1.png)

Three Shadows to Simulate Surface

![Box 2](image/research-0074-box2.png)

Close Up

And here is what is actually going on. This show the places where colors are placed to give a 3D effect.

![Box 3](image/research-0074-box3.png)

Color Revelation

![Box 4](image/research-0074-box4.png)

Color Revelation

Orange is where the highlight color lives.

Red, Green, Blue, are combined together to create smooth surface that created the 3D effect.

Yellow is the subtle Drop Shadow that is cast on the page background.



## Research Designer Png Designer Gui Preview I Have Managed To Create A Little Tool Named Mostly For Desktops The Tool Sets On...
### April 13th 2020, 9:45:49 pm EDT
<meta itemprop="dateCreated" datetime="2020-04-14T01:45:49.801Z">

![Designer](image/research-0073-designer.png)

Designer GUI Preview

I have managed to create a little tool named [Designer](http://catpea.com/designer), mostly for Desktops. The tool sets only three things, the top highlight, the bottom shade, a drop shadow that it casts on the background.

Our sample image has more shadows, more blending, it is precise with its colors, and my tool can do that as well, and without making the UI much more complex.

![Real](image/research-0073-real.jpg)

Real Design

I am only focusing on the box around the components, so in this case it is the thing that makes the Audio Player look 3D, like it has a height.

![Real 2](image/research-0073-real2.png)

Real Design

From what my eyes can see here, he set the top highlight to be 1 pixel, bottom shade about 6, and he is using a subtle 4 pixel drop shadow. Alone, these things are almost imperceptible,

together, they create a convincing 3D effect.

I believe this is a design by [Creative Mints](https://dribbble.com/creativemints) because I noticed [something similar](https://dribbble.com/shots/864910-Ui-Kit).

And right now, I don't have any particular design in mind. I am just focusing on creating a tool that gives a convincing 3D effect, in a language called CSS. CSS is not meant for this, but applying a couple of tricks here and there, can actually work, and efficiently, and it would be accepted by the [Bootstrap](https://getbootstrap.com/) developers as OK. I did play with this tool for a few minutes, and it needs another layer of shade, to make the bottom border more pronounced, other than that it is about done.



## Research Real Jpg Real Design Creating Was In Deed A Good Idea The Newest Thing About It Is That It Gives Me The Ability To...
### April 13th 2020, 10:56:54 am EDT
<meta itemprop="dateCreated" datetime="2020-04-13T14:56:54.894Z">

![Real](image/research-0072-real.jpg)

Real Design

Creating [serserge](https://github.com/fantasyui-com/serserge) was in deed a good idea, the newest thing about it, is that it gives me the ability to query [Bootstrap](https://getbootstrap.com/) source-code for things like: "Hey! which things in the source-code have a background?"

Armed with this information I can mark components and their pieces for cloning (making my own copy) and then editing.

Now, the next step is DESIGN. The [image up top](https://catpea.com/research/real.jpg) (click to zoom) is a really good example of what design is... design makes you look.

Design is Pleasant.

Design, like a Remix of a Song, changes as not to bore.

![Real 1](image/research-0072-real1.jpg)

Real Design

I am going to make a new tool, here for catpea where I study certain approaches to creating artistic accents.

I have previously experimented with this by having created [skins](https://github.com/fantasyui-com/skins), [neumorphism](https://fantasyui-com.github.io/neumorphism/), [fantasy-gui](https://fantasyui-com.github.io/fantasy-gui/), [synthwave](https://fantasyui-com.github.io/synthwave/) and [color-schemes](https://github.com/fantasyui-com/color-schemes). For this first one I'll keep things even simpler.



## Research Mm Png Sunday Mascot I Continue Adapting My Strategy For Approaching Automated Processing I Created A Program That C...
### April 12th 2020, 2:03:06 pm EDT
<meta itemprop="dateCreated" datetime="2020-04-12T18:03:06.437Z">

![Mm](image/research-0071-mm.png)

Sunday Mascot

I continue adapting my strategy for approaching automated [Bootstrap](https://getbootstrap.com/) processing. I created a program that creates a little overview of thier code for me, my program is able to understand all of their code now.

![Overview](image/research-0071-overview.png)

Bootstrap Code Overview

Overall, they come in with just about 5700 statements, talking about color, and text padding, and and little quirks and tricks. Looking over their work, I realized, If I touch any of this code they will hate me, with a passion.

If I am to get accepted into [Bootstrap Themes](https://themes.getbootstrap.com/)

I can't automatically process their things, I have to make copies.

For example: the Navbar on top of this web page is a lot of work, a lot of balancing and tweaking, and option adding.

The only way I can touch it, is by making a copy, calling it SuperNavbar. And here, in the SuperNavbar, I can strip down colors, and apply my magical animations, and bits, and things.

Well, that's progress. Progress with a bonus. Because at any point users can fall back on the original Navbar, and there is a couple ways to do that even. Anymore, work must arise from my Static Code Analysis here, from my little tools.

At this point the Greatest Secret in Good Programming is kicking in: Rather than doing what I think I should do. I should do what is possible to do, with a hefty dose of code integrity, and program stability.

More than that, my theme, my designs, should apply to many versions of Bootstrap, many of the [past releases](https://getbootstrap.com/docs/versions/) - that's just good programming.

Even if I stick to the v4.x branch (which is most reasonable), I will need to release 5 of 6 versions of my theme, and then maybe three more after that.

I am very well aware, what a punch in the stomach all this is to the designers. The stuff that I am working on here, is really uncomfortable for most Designers. They don't want to process abstract syntax trees, or learn programming even.

Also, a little twinkle of a business perspective is bubbling up here. Automated processing means bug free product, fast upgrades, fast support.

But still, I am not sure what I will do to automate Design, once I do have SuperNavbar, presumably with all colors removed, and I make some classes like I have in [Theme](http://catpea.com/theme) right now, to apply color to things, an interactive color, that supports mult-color-websites and multiple dark themes.

Vary some fonts, and padding, and margins. I am still stuck with, what is basically... a [basic theme](https://bootswatch.com/).

![Basic](image/research-0071-basic.png)

Basic Theme

I still have to come up with a Robotic Artist, that actually does [real design](http://pixelkit.com/kits/gui/).

![Real](image/research-0071-real.jpg)

Real Design

But... I think I know how to do that. You know how Megaman can [inherit weapons from their enemies by touch](https://youtu.be/3ufVQIUEiYc?t=40).

![Megaman](image/research-0071-megaman.jpg)

Design Inheritance

I think I can make some basic designs like beautifully styled boxes, and then AIM THEM AT SuperNavbar and SuperCard, and fire.

SuperNavbar would then inherit properties of those Artistic Designs, background skin, inner shadow, blend gradients. Art is actually easy. I don't think anyone should ever sit down to decorating Navbars, the decorations must be carbon copied from something simpler, and certainly more reusable. THis way multiple components can be decorated at once.

Wow, it is 2PM already. I am thinking about a lot of my programming projects at once, this coloring adventure is just relaxations.



## I Went For The Gold Ive Been Experimenting With Low Level Scss Language Processing For A Goodie Long While Now And I Just Fin...
### April 11th 2020, 7:55:56 pm EDT
<meta itemprop="dateCreated" datetime="2020-04-11T23:55:56.207Z">

I went for the gold, I've been experimenting with low level SCSS language processing for a goodie long while now, and I just finished an early test of a program that removes color information from [Bootstrap](https://getbootstrap.com/).

![Nocolor](image/research-0070-nocolor.jpg)

Bootstrap With Color Information Stripped Off

Buttons are white as that is their uncolored-color, I have access to, probably 100% of code, so if I missed something I can track it down.

It is hard to estimate the usefulness of this system. But, Bootstrap is being irresponsible with their use of colors, so I remove them. I allow myself to start at zero. It is a consistent surface to work with.

This wasn't too hard to code but it took the entire afternoon, like six or seven hours. It is a computer program that I can re-run on every new version of bootstrap. So, nothing they do will mess with my colors.

I'll have to think about this some more. If it is at all possible to process Bootstrap automatically, this program is it.

I called the program [serserge](https://github.com/fantasyui-com/serserge) in large part because I only had a Raspberry Salad yesterday (Shredded Lettuce with Raspberry Preserves) as part of my extremely sophisticated diet, and here is the main [beef](https://github.com/fantasyui-com/serserge/blob/master/plugins/postcss-reconnaissance/index.mjs) that removes color related information: [beef](https://github.com/fantasyui-com/serserge/blob/master/plugins/postcss-reconnaissance/index.mjs). I can't believe this took six+ hours, maybe my daydreams are just longer. Hmm.



## I Had To Disable Automatic Color Changes I Am Using A System Here That Takes A Snapshot Of The Code And Uploads That Snapshot...
### April 11th 2020, 12:10:41 pm EDT
<meta itemprop="dateCreated" datetime="2020-04-11T16:10:41.703Z">

I had to disable automatic color changes. I am using a system here that takes a snapshot of the code, and uploads that snapshot to catpea.com, that snapshot is shown to you before the real code loads. This helps the search engines process data, it improves load times by a huge amount. When I generate a website at noon, it will be bright, when I generate it at night it will be dark, this introduces complexity to something as silly as night mode. I just have the night mode run in manual now. By default the website is bright, and if the user clicks the light bulb it will switch to dark.

It is a fun problem, it actually asks for User Preferences, where the user can put website coloring in manual.

There is a technological problem lingering here, unfortunately. I can only animate transitions to dark. The system us unable to smoothly transition back to bright. This is a problem with [Bootstrap](https://getbootstrap.com/)'s color information. Colors are so different from layout, that they should live in their own file, with their own programming. In Bootstrap 4.5.x this is not the case, and the code is ugly. In 5.0 they maybe fixing this (I am guessing), but it will forever be their solution, and they are unlikely to focus on nice to haves like smooth animations between color modes

I need to take over [Bootstrap](https://getbootstrap.com/)'s Colors. This is not easy. But I've done it before. I nuked all the color declarations and automatically built a separate color file. It was a sophisticated, but primitive experiment. But automatic color declaration removal is critical, as Bootstrap changes their code all the time. With each new version I have to revise my code, that's not cool. With automatic processing, that will be much easier.

See, coloring is not just about making a pretty scheme, it is a hard problem, and it requires hard programming, like parsing the SCSS code-base, deleting declarations in the Abstract Syntax Tree (AST), then dumping it back into a mere bootstrap.scss file. Then programming a general purpose coloring system capable of accounting for all the missing colors. I am going to leave this for later, automated processing is never without problems. Goodness knows, Bootstrap is trying to keep the colors kind of outside of the main coed base, but the functions that apply colors are still un-uniform and deeply burred.

To be realistic about what can be achieved in the [Bootstrap](https://getbootstrap.com/) 4.0.x - 5.0 realm, I think I can only change the HUE, I can go from their blue to Orange, but I can't make the orange too dark, or too bright. This still solves the coloring problem, it is an extremely simple and effective solution

There is yet another way of looking at color, and that is seeing it in relation to how readability is impacted. It would be possible to go from White-on-Blue to White-on-Yellow, so as long as I carefully calculated [wcag-contrast](https://www.w3.org/TR/WCAG20-TECHS/G18.html), and altered the yellow to be within the same (or similar) range as blue.

Playing with color now.



## Huge Problems With Mixing Colors It Is Not Really Possible To Use Yellow On White Now I Kind Of Have The Heads Up Yellow Is...
### April 10th 2020, 6:17:27 pm EDT
<meta itemprop="dateCreated" datetime="2020-04-10T22:17:27.567Z">

Huge problems with mixing colors. It is not really possible to use yellow on white. Now, I kind of have the "Heads up yellow is being used on white" information and and I can attempt to program a solution, but, perhaps, I am thinking about it wrong.

![Color Mixing](image/research-0068-color-mixing.png)

Huge Problems with Mixing Colors

I reset almost all text-colors on CATPEA to black. Everything looks OK. So I am at a, really, good point.

I also ran some experiments that do work, and show promising results.

![Color Mixing Trial 1](image/research-0068-color-mixing-trial-1.png)

Good Results via The HSL/HSV Model

The [HSL](https://www.youtube.com/watch?v=NAw2_NtGNaA)/[HSV](https://www.youtube.com/watch?v=yNgH3wv4crg) color models are more than just models. They are tools, that yield themselves to manipulating colors via color theory. In color theory we have notions of colors that are opposite on a circle, and here we have a cylinder, shaped to work with that theory.

![Hsl](image/research-0068-hsl.png)

HSL Model

It makes sense that [Bootstrap](https://getbootstrap.com/) developers wouldn't want to touch this. They are developing a framework, not really a theme.

I am developing a Theme, that heavily deals with color and several additional components.

I am going to create, what is probably going to end up being an extended color set that pushes default colors, for example red, into HSL world, creating something like red-25 red red-75, where the middle red is the actual color the user selected, but red-25 will always be half of red in terms of Saturation and Luminosity, conversely red-75 will have a-half-more of saturation and luminosity. Enough so that text in red on red-25 background will be guaranteed to be readable.

If this does not work out, then I'll create an extended palette of all colors and just name them red-dark and red-light.

And if this fails, then the only two colors the user will get to keep will be Primary and Secondary, everything else will be strictly computer generated. They will use Primary/Secondary at their own risk, and on a background that they know fits.

All these approaches are meant to eliminate color clashing, which is the number one problem in Bootstrap.



## Research Dexter Png My Laboratory Is Cat Pea Oh Noes Added Site Wide Support For Night Day Mode I Thought It Was A Bit...
### April 10th 2020, 1:27:13 pm EDT
<meta itemprop="dateCreated" datetime="2020-04-10T17:27:13.602Z">

![Dexter](image/research-0067-dexter.png)

My laboratory, is Cat Pea... Oh noes...

Added site-wide support for Night/Day mode. I thought it was a bit hokey at first, but it is solid, it is good, a round of tests will make it perfect.

![Pixels](image/research-0067-pixels.png)

Chromatic Storytelling Sample

The backgrounds are inspired by Interstellar and Life Aquatic with Steve Zissou. Take a look at [Chromatic Storytelling](https://towardsdatascience.com/exploring-chromatic-storytelling-with-r-part-1-8e9ddf8d4187) to see how they extracted scenes from movies to get a new view of the classics.

In the day mode I use pixels from Life Aquatic with Steve Zissou, during the night I use pixels from Interstellar.

The night more is automatically enabled between 8PM and 6AM. I hope 6AM is not too early.

So, of course, there is this crazy little temporal consequence associated with this. When clicking the light-bulb I can't just say it is night or day because the computer is now calculating this.

Now I must ask for allowance, a grace period when I can override the computer's idea a of day.

So when I force night-mode during the day, the computer will reset back after 12 minutes. I think this is funny.

(Oh, and it is 12 minutes, because my Linux monitor goes to sleep after 15, no matter what. So to test the system, it has to be less than 15)

I remember the day, I got my self into all this ridiculousness. People kept saying "Computers are the future", and the little me was like "Hey, I am trying to get my future all sorted out, why don't I learn computers? After all, it is the future!"



## Yay Night Mode Seems To Have Worked Out I Even Gave It Nice And Tidy Animation Had A Light Bulb Icon For Me So It All Went S...
### April 9th 2020, 6:07:45 pm EDT
<meta itemprop="dateCreated" datetime="2020-04-09T22:07:45.885Z">

Yay, Night Mode seems to have worked out, I even gave it nice and tidy animation. [Octicons](https://octicons.github.com/) had a light bulb icon for me so it all went smoothly. Give it a try, go to the [Research](http://catpea.com/research) page, put on some shades, and click on the ![Light Bulb](image/research-0066-light-bulb.svg) icon ↑.

![Bulb](image/research-0066-bulb.png)

Night Mode Toggle



## I Might Have Come Up With A Way To Toggle Night Mode On Websites Even Dark Ones I Did This With Just Two Lines Of Code Basica...
### April 9th 2020, 5:22:15 pm EDT
<meta itemprop="dateCreated" datetime="2020-04-09T21:22:15.282Z">

I might have come up with a way to toggle night mode on websites, even dark ones. I did this with just two lines of code. Basically what it came down to was asking, "What am I going to do with a red/danger alert box, during night mode?" And the answer is, it had to dark, everything has to be dark in night mode. There cannot be colorful things and especially things with backgrounds.

HUGE BONUS! Applications that are written dark, that look good in dark colors, do not, at all, require dark more. It is simple and logical, but get this: Applications that are Bright, Silver, as most applications are... MUST BE REWRITTEN TO SUPPORT NIGHT MODE. Isn't that unusual. All my work does not need any changes because it is already in dark more.

So, on this website, I don't really need night mode. But, as experimental research goes I do need a system for it. So here is how this will work. This very page, The Research Blog, will be the first one to get night mode, and will be put in dark more by default. Now if somebody wants DAY MODE, then they can switch it off, and the page will become blinding.

I'll work on that for a couple of hours, it shouldn't take long, I already have a demo on the [Theme](http://catpea.com/theme) page.



## I Fixed Up The Page Where I Show Off Some More Advanced Backgrounds But Overall This Has Been A Study Of Color Not Just How...
### April 9th 2020, 3:29:25 pm EDT
<meta itemprop="dateCreated" datetime="2020-04-09T19:29:25.681Z">

I fixed up the [Theme](http://catpea.com/theme) page where I show off some more advanced backgrounds. But, overall this has been a study of color. Not just how to create the palettes but how to configure colors in bootstrap.

This is a small success. Basically, it comes down to not using any text colors unless it is necessary, at which point make sure the background matches. As to background colors, the primary color doe backgrounds is bg-dark, or if it is a white website then bg-light. The coloring has to be used as little as possible because it does not really work.

Since I am using a programmable component layer over [Bootstrap](https://getbootstrap.com/), I can automate colorification, combined with the notion that it must be used sparingly. I'll be able to create multicolored websites soon, or as the case might be, websites with multiple coherent color themes.

This was more difficult than I expected. And when complete it will be quite a framework for web applications.



## I Upgraded And Begun Using It Somewhat The Website Has New Colors That Almost Came Directly From Getting Colors To Like Each...
### April 9th 2020, 11:55:13 am EDT
<meta itemprop="dateCreated" datetime="2020-04-09T15:55:13.217Z">

I upgraded [Palette](http://catpea.com/palette) and begun using it somewhat. The website has new colors that almost came directly from [Palette](http://catpea.com/palette).

Getting colors to like each other is not easy, but that's why [Palette](http://catpea.com/palette) exists. It is crafted towards generating those six colors (Primary, Secondary, Success, Info, Warning, Danger) in such a way that they will blend together in harmony.

I will need more preview arrangements, I need to be able to see what colors work well with the primary background. But this is easy, and every color has a separate slider, for a Human-based adjustment. So it is not just color theory, but also good taste.

I learned a lot about working with bootstrap these past few weeks, while I did well designing all the widgets, I still wasn't too certain about what colors I could use in which places.

I have learned that Primary, Secondary and White, are the main colors, if I need to make something jump out that's all I got. Success, Info, Warning, Danger are for non-creative decorations. And there is also two more colors Dark and Light. And I use these for backgrounds only. A dark website will use bg-dark for all the widgets, and a white website will use bg-light. There isn't really a way to flip-flop between the two without human intervention. In a couple of months I could outline a plan that would allow switching between dark and white. Personally, I think all websites and applications should be dark. I'll make a website that can switch between the two, but that will take some experimenting. [Bootstrap](https://getbootstrap.com/) is the same way, they basically say if you want something dark say bg-dark+text-light and that hard-coded into the design. I would need to make a program that toggles between bg-dark+text-light and bg-light+text-dark on application level (a tier above the design).



## I Created A New Tool I Named This Time It Deals With Color Theory Right Now It Is Focused On The Five Primary Colors That Most...
### April 8th 2020, 7:35:35 pm EDT
<meta itemprop="dateCreated" datetime="2020-04-08T23:35:35.074Z">

I created a new tool I named [Palette](http://catpea.com/palette) this time it deals with color theory.

Right now it is focused on the five primary colors that most designers use.

In context of this tool they are labeled: Primary, Secondary, Success, Info, Warning, Danger.

[Bootstrap](https://getbootstrap.com/) developers call them contextual colors.

[Color Theory](https://www.youtube.com/watch?v=NN5h6Uwtqzw) is a tiny-tiny little bit more complicated than adjusting colors and themes.

But it is not very complicated. Most often it is just a cylinder of hues with colors going around.



## I Wanted To Quickly Demonstrate What I Mean When I Say The Ui Works On Both Mobile Devices And Desktop Computers The First Imag...
### April 8th 2020, 7:01:17 pm EDT
<meta itemprop="dateCreated" datetime="2020-04-08T23:01:17.448Z">

I wanted to quickly demonstrate what I mean when I say the UI works on both Mobile Devices and Desktop Computers. The first image shows the application in desktop mode, and second on mobile. I cut the mobile up into columns because the image was too long. What happends is that the Desktop version collapses into a single long column on mobile. The application is still usable on mobile. This is not always the case with other applications, people don't always build the layout right.

![Desktop](image/research-0061-desktop.png)

Application In Desktop Mode

![Mobile](image/research-0061-mobile.png)

Application In Mobile Mode (I had to cut it up in multiple columns)



## I Finished Laying Down The Groundwork For Components As Predicted There Is Wisdom In Following Bootstraps Conventions The...
### April 8th 2020, 12:28:09 pm EDT
<meta itemprop="dateCreated" datetime="2020-04-08T16:28:09.783Z">

I finished laying down the groundwork for [Bootstrap](https://getbootstrap.com/)+[Svelte](https://svelte.dev/) components. As predicted, there is wisdom in following Bootstrap's Conventions. The code is short, clean and lightweight.

I only styled the big grid in [CATPEA DAW](http://catpea.com/daw) this is a lot of work, or at least getting it off the ground initially was a lot of work. Now that I know how to structure things, things will move faster.

![Gui 5](image/research-0060-gui5.png)

Fully Styled Component

Here is the [graphics programming language](https://github.com/fantasyui-com/catpea-com/blob/b79570e6459d128d3ecb79ed478ffe65fb23759c/src/style/daw/daw.scss) and the [actual code of the musical form component](https://github.com/fantasyui-com/catpea-com/blob/b79570e6459d128d3ecb79ed478ffe65fb23759c/src/components/song-machine/Form.svelte) it is very compact, but there are multiple layers of programming conventions here, ew, ew.

I should add that this grid is where the user structures a part of a song, for example The Intro. Each cell in here represents about 16 notes that can be inserted. But also, once the user establishes those 16 notes, they only need to worry about lighting those buttons up, it is always the same 16 notes per row... they just select where those notes are active. And beneath this grid is a list of instruments, and places where those 16 notes go. If the user places sharp-drums as the first instruments, selects all 16 note-spots, then it will play tsk-tsk-tsk-tsk-tsk-tsk-tsk-tsk-tsk-tsk-tsk-tsk-tsk-tsk-tsk-tsk BUT ONLY IF THE cell in the thing pictured above is lit. So this grid is an activator of melodies. Which are created in the thing pictured below:

![Gui 6](image/research-0060-gui6.png)

Yet Un-styled Melody Maker Component



## Clarification As To Why My Development Is Taking So Long While I Am Developing Some Programs That Are Best On The Desktop...
### April 8th 2020, 9:52:16 am EDT
<meta itemprop="dateCreated" datetime="2020-04-08T13:52:16.396Z">

Clarification as to why my development is taking so long. While I am developing some programs that are \*best\* on the desktop. I am actually developing User Interfaces that work on Mobile Phones, and "grow" to fit tablet and desktop. Making user interfaces that work property on Mobile and Desktop is kind of hard, the more detailed they become the harder it is to ensure compatibility.



## Yup It Was A Github Problem They Only Serve Regularly Named Files Everything Was Fine On My End On My Local Servers But The...
### April 7th 2020, 9:41:32 pm EDT
<meta itemprop="dateCreated" datetime="2020-04-08T01:41:32.088Z">

Yup, it was a github problem, they only serve regularly named files. Everything was fine on my end, on my local servers. But the moment website was uploaded to their server, it would refuse to serve some files. So, on my computer the program ran fine, on github's it was missing files as the server would not serve them just give a File Not Found 404. Pretty awful, I couldn't fully investigate the problem until I uploaded to github where the error was occurring.



## I Am Testing The Other Stuff I Added Now I Narrowed Down Problems Down To One Thing So If Something Is Still Broken Ill Fix It...
### April 7th 2020, 5:11:12 pm EDT
<meta itemprop="dateCreated" datetime="2020-04-07T21:11:12.541Z">

I am testing the other stuff I added now. I narrowed down problems down to one thing so if something is still broken I'll fix it now. I wrote a [cute little program](https://github.com/fantasyui-com/catpea-com/blob/master/bugfix-commonjs-helpers.sh) to apply the bug fixes. It is in a language called [Bash](https://en.wikipedia.org/wiki/Bash_%28Unix_shell%29) ([Bash Tutorial](https://www.youtube.com/watch?v=v-F3YLd6oMw)). It is my pet language. Not favorite, but like a bitey pet Lynx type of thing. All my music processing software that I used at the gym was written in Bash. It is an old language.



## Another Website Crash Isnt Reporting Errors Properly Working On It Now I Think I Know What Is Going On But It Is Just A Th...
### April 7th 2020, 3:44:14 pm EDT
<meta itemprop="dateCreated" datetime="2020-04-07T19:44:14.734Z">

Another website crash, [Svelte](https://svelte.dev/) isn't reporting errors properly. Working on it now. I think I know what is going on, but it is just a theory for now. Microsoft is is rolling out github server upgrade, and unusual file-names are causing errors. I got errors from files starting with dot and files starting with underscore. This will fix problems, but I don't know if it is the exact problem I have here, right now.



## The Navbar Kerfuffle
### April 7th 2020, 2:43:22 pm EDT
<meta itemprop="dateCreated" datetime="2020-04-07T18:43:22.379Z">

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



## Dealing With Incompatible Systems
### April 7th 2020, 9:41:39 am EDT
<meta itemprop="dateCreated" datetime="2020-04-07T13:41:39.748Z">

There are some anomalies in this system but they are easily dealt with.

This morning I've been researching the combination of technologies behind the collapsible Navbar on the top of the page.

The reason why there is complexity here is screen size reporting, the navbar is structured by a non-programmable language, kind of an automatic language.

There is no way to say "Oh, the screen size is this much, I'll do this here, then do that there. Instead what is said is screen size small collapse menu. And nothing else can be said." With [Svelte](https://svelte.dev/) something must be added, svelte has a particular way of approaching animations.

That means the existing navbar and svelte/programming-framework are incompatible, cannot work together.

The existing navbar must be removed, and new one must be programmed in.

This is a large project because of how important compatibility among devices is in this context (main menu can't fail, otherwise the whole website is broken). BUT! If we allow that [Bootstrap](https://getbootstrap.com/) the existing UI framework I use here is a suggestion and collection of snippets. Then, most of this work is already done, I just have to copy Navbar. I'll create a new program, name it Navigator, and start with the Navbar code base.

Eventually [Bootstrap](https://getbootstrap.com/) people will alter their programming to catch up with technologies like [Svelte](https://svelte.dev/) and then I'll be able to go back to using the standard Navbar.



## Impossibilities and Superiorities
### April 7th 2020, 9:12:33 am EDT
<meta itemprop="dateCreated" datetime="2020-04-07T13:12:33.080Z">

I am looking over the code, most things that could be done to make the site better are almost impossible due to the restriction that this meeting of technologies imposes.

It is the only way to make things actually work.

The browser was not originally designed for applications. Over last couple of decades it gained technologies that can make applications like CATPEA.

But that meas balancing multiple technologies, and that balance causes severe restrictions in what can go where.

I have worked with numerous technologies developed specifically for making Applications, but they are much worse than the upgraded browser.

This is because nothing has received as much attention as the web. So, even though this technology stack is greatly restricted, it is also very powerful.



## Working With The Gui Testing What I Can Alter What I Cant I Still Have No Idea What Catpea Is Good For What Website Format...
### April 6th 2020, 6:18:33 pm EDT
<meta itemprop="dateCreated" datetime="2020-04-06T22:18:33.170Z">

Working with the GUI, testing what I can alter, what I can't. I still have no idea what catpea is good for, what website format I should create. There is also a division of widgets forming some are useful tools (Song Beat Counter) others are little information displays (You Tube Videos, Season Countdown). As far as User Interface Design and getting things done goes, it is hard to beat chaos.

![Gui 2](image/research-0052-gui2.png)

UI Thus Far

![Gui 3](image/research-0052-gui3.png)

UI Thus Far



## I Am Testing Separate Sections In The Main Menu The Current Scroll Bar Within A Scroll Bar Setup Was For Testing I Wanted To...
### April 6th 2020, 3:21:21 pm EDT
<meta itemprop="dateCreated" datetime="2020-04-06T19:21:21.474Z">

I am testing separate [Quarantine](http://catpea.com/quarantine)/[Research](http://catpea.com/research) sections in the main menu. The current scroll-bar within a scroll-bar setup was for testing, I wanted to see if it worked or if I needed to so something special. Well, they are both blogs, very similar to the warrior book, they should just have the same UI. This also brings me closer to proper Web Design, where I take a moment to make some fancy graphics to decorate typographical creations.



## I Continue My Gui Theme Development Research Todays Test Is About Creating A Custom Component For The Digital Workstation My...
### April 6th 2020, 11:16:22 am EDT
<meta itemprop="dateCreated" datetime="2020-04-06T15:16:22.095Z">

I continue my GUI Theme development research, today's test is about creating a custom component for the digital workstation. My research revealed that it is more efficient not to use the helper classes I created. By using helper classes such as bg-primary instead of the longer way I end up over-complicating things in the end. I am entering a stage of simplification as I can tell a lot of the things I invented work great. What I would like to see, is as little confusion as possible. If I keep the code simple today, then in a few weeks I can start thinking about selling "Digital Audio Workstation Theme" at [Bootstrap Themes](https://themes.getbootstrap.com/), more importantly I get to learn more about Bootstrap's coding conventions, and perhaps make my own Bootstrap even.



## Expanded Color Subsystem And Finished Configuring The Build System It Should Work Ok When Installed As A Desktop Shortcut I H...
### April 5th 2020, 6:35:47 pm EDT
<meta itemprop="dateCreated" datetime="2020-04-05T22:35:47.063Z">

Expanded color subsystem, and finished configuring the build system. It should work OK when installed as a desktop shortcut. I have to figure out some way to make catpea useful.



## It Took Me A Moment To Figure Out How To Structure Colors Shades For User Interface In The The Problem Was I Needed More Color...
### April 5th 2020, 12:56:55 pm EDT
<meta itemprop="dateCreated" datetime="2020-04-05T16:56:55.639Z">

It took me a moment to figure out how to structure colors/shades for User Interface in the [CATPEA DAW](http://catpea.com/daw). The problem was I needed more colors, but I don't want to go against [Bootstrap](https://getbootstrap.com/)'s way of doing things. So, where they have a color scheme like this: primary-color, secondary-color, muted-color, warning-color. I added primary-color-dark, secondary-color-dark, muted-color-dark, warning-color-dark and primary-color-light, secondary-color-light, muted-color-light, warning-color-light. So when two of bootstrap colors start biting each other for example button and box (that the button is in) I can make the button lighter by saying button color: primary-color-light, so I tripled color count, in such a way that all the users of the [Theme](http://catpea.com/theme) just need to remember "Oh, yeah, all the colors have a dark and light variation now. Hmm." so [CATPEA DAW](http://catpea.com/daw) UI is back to semi-normal now, and I updated the [Theme](http://catpea.com/theme) page to show off this upgrade.



## Whoopsie I Crashed The Website Generator With Long Winded Code Explanations With Samples All Fixed Now I Always Worry Github...
### April 4th 2020, 3:47:42 pm EDT
<meta itemprop="dateCreated" datetime="2020-04-04T19:47:42.610Z">

Whoopsie, I crashed the website generator with long winded code explanations with samples. All fixed now. I always worry github will shut me down, I don't think they like Code Mavericks like me. If something ever happens like that, I'll switch within a day or two, catpea.com domain name will stay the same.



## Ewwwwwww I Switched From To Node Sass Got Old I Guess I Wasnt Really Paying Too Much Attention To Sass A Ui Programming L...
### April 4th 2020, 3:04:39 pm EDT
<meta itemprop="dateCreated" datetime="2020-04-04T19:04:39.833Z">

Ewwwwwww! I switched from [node-sass](https://github.com/sass/node-sass) to [Sass](https://sass-lang.com), node-sass got old, I guess.

I wasn't really paying too much attention to SASS (a UI programming language) because I think CSS should be shaped with JS, as these are native browser

technologies. But since [Bootstrap](https://getbootstrap.com/) is forcing me into [Sass](https://sass-lang.com), I might as well make use of the language, and... I guess its functions as well.

Since this is a new addition to the system, there is both a learning curve, and bugs.

So I've been trying to execute color.adjust(#6b717f, $red: 15); these are the big fancy new functions, but I've been getting errors for days.

Well, now that I switched to [Sass](https://sass-lang.com) (from node-sass) there were changes, but I still got an error.

It turns out they have a new module system, and before I make use of the color function I have to execute @use 'sass:color'; on top of the program file.

That's how it is done in all programming languages, but since I upgraded, I had to learn few new things about the new version of the language.

Now, this does not mean that I approve of the existence of the [SASS Programming Language](https://sass-lang.com/documentation/at-rules/control/if) in my code. But it is OK.

As the first, thing here, I created a custom function, this is written in JavaScript, and it is integrated with SASS. The function measures readability between a background color and a foreground color, and it is interesting... Because even though everyone says "if readability is more than 4.5 you are peachy",

When working with themes, when kind of knowing colors, the 4.5 threshold can be lowered down to 1.5 even.

The big deal here is being able to say, keep darkening/lightening that color until it passes the readability test.

Here is an image of a recent test of using my [wcag-contrast](https://www.w3.org/TR/WCAG20-TECHS/G18.html)(foreground, background) function until a color is readable.

Note how text in the first column it not readable as the background and text-color converge in the middle.

And now look at the second column, where SMART coloring is taking place.

I know it is still dark, I kept the color change threshold very low on purpose, to make the overall UI graphics nice. The point is that the text is keeping up with the background, it is keeping juuuuuuust a wee bit above, un-readability.

![Smart Color](image/research-0046-smart-color.png)

Automatic Coloring

As a side-note, programming-wise this is not really impressive, it is like 5 lines of code, so pro-programmers would yawn at this, but it is a big deal for me, because I am getting really precise and delicate control over colors in my Dark Theme here, that it is only 5 lines of code, is great for me, I can just type in a bit of code and be done with worrying about color readability for some UI component or button/label combo. I like this. And I like being given the opportunity to ponder if I want something to grow brighter (like a label on a button) or darker, like in the case of a number-label on a table of data (like a row number in Excel).



## Zoinks I Started Work On A Graphical Theme For Applications I Called It It Provides Extensions For And Components Based On...
### April 3rd 2020, 7:25:54 pm EDT
<meta itemprop="dateCreated" datetime="2020-04-03T23:25:54.011Z">

Zoinks! I started work on a Graphical Theme for Applications, I called it [Theme](http://catpea.com/theme). It provides extensions for [Bootstrap](https://getbootstrap.com/) and components based on [CATPEA DAW](http://catpea.com/daw). I'll use it for my research here, and try to keep it tidy and inline with Bootstrap's Programming conventions so that I can think about getting into [Bootstrap Expo](https://expo.getbootstrap.com/) and later [Bootstrap Themes](https://themes.getbootstrap.com/). I don't really want to create some stressful situation about sales, tech-support, and bug fixes; but I do like following [Bootstrap](https://getbootstrap.com/) conventions (it helps me keep code un-confusing) and I like learning about all this. Here's early: [Theme](http://catpea.com/theme).



## Yes I Am 99 9 Sure That The Sound Machine Will Work The User Interface Is A Lot Simpler Than I Could Almost Call It A Symboli...
### April 3rd 2020, 1:25:35 pm EDT
<meta itemprop="dateCreated" datetime="2020-04-03T17:25:35.682Z">

Yes, I am 99.9% sure that the Sound Machine will work.

The user interface is a lot simpler than [LMMS](https://lmms.io/) I could almost call it a SYMBOLIC SEQUENCER because it is so incredibly abstract.

I threw out a lot of ideas that people generally expect from a DAW, I am not even sure I am going to have a Piano Roll in here. What is the use of a piano roll when a typical beat sequencer can be given the most favorite and beautiful chords, it is not like musicians hit all the keys, they just hit that little selection that sounds nice.

The mechanics of a beat sequencer are superior to that of a piano roll, in many contexts. In a majority of related (webbrowser GUI music making) contexts (getting a neat song done quickly, not needing to learn to make music, not needing a real piano to make a song, working with a simple UI, enjoyment of creating music).

I am looking forward to creating a selection of instruments the user can use.

I will create a RANDOMIZE SYNTHESIZER SETTINGS button, this will make different instruments with a simple click of a button. Sure, it is great to have a little library, but is it needed when maybe a selection of 10 synthesizers with a randomize button is available? That makes for hundreds or thousands of instruments just leap out of thin air.

![Sequencer](image/research-0044-sequencer.png)

Song Structure and Sequencer



## Already Bumped Into An Artifact That Deals With Integrity Problems Basically When A New Part Of A Song Is Selected The Stuff T...
### April 3rd 2020, 10:15:43 am EDT
<meta itemprop="dateCreated" datetime="2020-04-03T14:15:43.386Z">

Already bumped into an artifact that deals with integrity problems. Basically when a new part of a song is selected, the stuff that was selected in the old part needs to be cleared. So I created an unselections section in the data file. This is still reasonable, it is not a sign of trouble. But two or three anomalies like that like that could destroy a program like the [CATPEA DAW](http://catpea.com/daw). But so far so good looks like it will all work.

![Unselections](image/research-0043-unselections.png)

Selections Trigger Unselections



## Yup So But Also Github Developers Didnt Code Octicons Right It Is Not Done In The Standard Way And It May Be That Under Ce...
### April 2nd 2020, 6:11:51 pm EDT
<meta itemprop="dateCreated" datetime="2020-04-02T22:11:51.381Z">

Yup, so [github was having problems](https://www.githubstatus.com/) but also, github developers didn't code octicons right, it is not done in the standard way, and it may be that under certain conditions the database of octicons that I import into my code will get wiped, they have processing instructions in there that run every time their library is imported, technically it should run once as it is cached, but under Svelte something goes wrong and the library returns empty data. I standardized it, and it works now, I am going to redo their system, I'll probably let them know that I did it, but that will be the end of it. I like these icons because there is a cute [squirrel](https://octicons.github.com/icon/squirrel/).



## Things In Square Brackets Are Supposed To Be Links But The System Is Crashing Before I Get A Chance To Replace The Square Brack...
### April 2nd 2020, 4:14:32 pm EDT
<meta itemprop="dateCreated" datetime="2020-04-02T20:14:32.068Z">

Things in square brackets are supposed to be links, but the system is crashing before I get a chance to replace the square bracket notation, it will take me a moment to figure out why [Sapper](https://sapper.svelte.dev/) is failing. I did finish writing the poem for today, so that's nice. I just found out that on top of everything else [github is having problems](https://www.githubstatus.com/): "Update - We are investigating reports of service unavailability."



## Yah It Is An Internal Bug I Have Little To Do With It Could Be Or That It Is Worth Solving Because It Is A Learning Experie...
### April 2nd 2020, 4:04:32 pm EDT
<meta itemprop="dateCreated" datetime="2020-04-02T20:04:32.068Z">

Yah, it is an internal bug I have little to do with, it could be [Rollup](https://rollupjs.org/guide/en/) or that [Octicons require a json file](https://github.com/primer/octicons/commit/875bc333ce4dc6a460a116dfd315a56dbb23120f#diff-c93a11fe3afdd3ccfbe1f152a8cf7b20L1), it is worth solving because it is a learning experience, I get a moment of time to look through the system I am working with, mostly [Svelte](https://svelte.dev/), [Sapper](https://sapper.svelte.dev/) and [Rollup](https://rollupjs.org/guide/en/). The code for [Octicons](https://octicons.github.com/) which is made by github is highly questionable, I should make a copy and just re-write it. There is some [SVG](https://www.w3.org/Graphics/SVG/WG/wiki/SVG_FAQ) work coming up, since Octicons are in SVG, I may just do that then.



## I Found Some Trouble In The Website Generation Configuration It Was Preventing Parts Of The Program From Operating I Am Going...
### April 2nd 2020, 12:05:22 pm EDT
<meta itemprop="dateCreated" datetime="2020-04-02T16:05:22.263Z">

I found some trouble in the website generation configuration, it was preventing parts of the program from operating. I am going to be testing it for a bit more.



## Is Now A Desktop Application Mobile Devices Are Too Slow For Making Music This Is A New Program With New Stuff In It I Wont...
### April 2nd 2020, 11:01:03 am EDT
<meta itemprop="dateCreated" datetime="2020-04-02T15:01:03.450Z">

[CATPEA DAW](http://catpea.com/daw) is now a Desktop Application, Mobile Devices are too slow for making music, this is a new program with new stuff in it, I won't be changing anything else, I like having all these random gadgets here.

And it is still too early to know if [CATPEA DAW](http://catpea.com/daw) can work, there is no guarantee that what I am doing can actually result in a functional program. I went out of my way to create a Data Structure Driven program with minimal data manipulation functions embedded in the UI only.

A lot of programmers would hate this, the best of them would want me to create well named ACTIONS like 'selectTrack' or 'enableNote' but that just adds to the weight of the program, it destroys it. Programs that are WRITTEN-OUT like the best of these programmers want are BLOATED, HUGE, almost broken by design.

And what I am creating is a program that exploits only that which is possible, and no more. I am creating a self editing data structure with self-updating graphics. If this works out, I'll be able to create programs without programming. It would be more like data shaping and expressing, and not programming. It would beat the heck out of other applications. There is no code here, there is nothing to break.

The trade-off is that a program like this can't receive specific features, UNLESS, they are possible as dictated by the data-structure and its shaping.

If this was a project for a company, for a client and client requested a feature incompatible with the tree, one would have to say "That, is not possible". To rewrite a program like this in standard code with Data Flows, Functions, Actions, Plugins, and such would take years.

Isn't this interesting? · Alas, let us first see if I can have all I need to make music withut needing functions.



## Added A Very Early Preview Of Sound Machine I Aim To Create A Workout Song Generator Builder But I Dont Want To Just Create A...
### April 1st 2020, 5:29:48 pm EDT
<meta itemprop="dateCreated" datetime="2020-04-01T21:29:48.923Z">

Added a very early preview of Sound Machine. I aim to create a Workout Song Generator/Builder, but I don't want to just create a Workout Song Generator/Builder and code it. I want to explore areas in and around it, by asking "What are some related programs that take little code to finish?". There is a possibility that Sound Machine can be a useful music Builder/Generator. If you have a Desktop machine take a look at what it would look like as its own page [CATPEA DAW](http://catpea.com/daw) it is a very raw mockup I have the Sound Machine in two places just to see what it would be like to have that little index on the left. Here is a screenshot:

![Daw](image/research-0037-daw.jpg)

Digital Audio Workstation



## Added The Salamander Piano Sampler Gadget...
### March 31st 2020, 9:14:25 pm EDT
<meta itemprop="dateCreated" datetime="2020-04-01T01:14:25.924Z">

Added the Salamander Piano Sampler Gadget.



## I Had To Rotate Labels On The Instruments Everything Goes Cdefgab Instead Of Abcdefg Sigh I Cant Believe This Is Part Of The...
### March 31st 2020, 8:32:07 pm EDT
<meta itemprop="dateCreated" datetime="2020-04-01T00:32:07.540Z">

I had to rotate labels on the instruments everything goes CDEFGAB instead of ABCDEFG. Sigh, I can't believe this is part of the [Scientific Pitch Notation](https://en.wikipedia.org/wiki/Scientific_pitch_notation) specification, music people are strange sometimes.



## Lots Of Little Bug Fixes.
### March 31st 2020, 8:30:07 pm EDT
<meta itemprop="dateCreated" datetime="2020-04-01T00:30:07.540Z">

Lots Of Little Bug Fixes. I made some instrument upgrades and a few code bugs snuck in.



## Added Preset To The Beat Sequencer To Test Support For Multiple Instruments I Also Added Salamander Piano Which Is Based On...
### March 31st 2020, 7:43:12 pm EDT
<meta itemprop="dateCreated" datetime="2020-03-31T23:43:12.938Z">

Added [Inner City, Good Life](https://github.com/fantasyui-com/catpea-com/blob/master/src/components/BeatSequencer.svelte) preset to the Beat Sequencer to test support for multiple instruments. I also added Salamander Piano, which is based on [Yamaha C5 Grand Piano](https://usa.yamaha.com/products/musical_instruments/pianos/grand_pianos/cx_series/cx-series.html), a real Piano, it sounds nice ![Megaphone](image/research-0033-megaphone.svg). Go to Shebang Slash Beat Sequencer, check some of those boxes to make the piano go. I set it as the default instrument.

![Piano](image/research-0033-piano.png)

Piano Fun



## Cleaned Up The It Is Actually Simpler Than It Looks Https Github Com Fantasyui Com Catpea Com Blob Master Src Components Be...
### March 31st 2020, 3:24:44 pm EDT
<meta itemprop="dateCreated" datetime="2020-03-31T19:24:44.147Z">

Cleaned up the [Beat Sequencer Source Code](https://github.com/fantasyui-com/catpea-com/blob/master/src/components/BeatSequencer.svelte) it is actually simpler than it looks.



## I Have Added Slide Open Slide Closed Animation To The Drawer In Shebang Slash Beat Sequencer When Opening One Of The Drawers I...
### March 31st 2020, 11:36:24 am EDT
<meta itemprop="dateCreated" datetime="2020-03-31T15:36:24.127Z">

I have added slide-open/slide-closed animation to the drawer in Shebang Slash Beat Sequencer, when opening one of the drawers, instead of contents appearing instantly they slide in vertically. I am not a fan of animation of this kind in GUI world, but everybody seems to be doing it, and if I am to develop a Bootstrap Theme for possible sales, I need to make sure all my designs cooperate nicely with [Svelte's Transition Directives](https://svelte.dev/examples#transition).



## Ive Been Looking At The Submissions In Curated By One Of The Original Developers And I Feel Like The Warrior Book Needs Bett...
### March 30th 2020, 6:15:38 pm EDT
<meta itemprop="dateCreated" datetime="2020-03-30T22:15:38.600Z">

I've been looking at the submissions in [Bootstrap Expo](https://expo.getbootstrap.com/) curated by one of the original [Bootstrap](https://getbootstrap.com/) developers. And I feel like the Warrior Book needs better design, and I think maybe the Workout Song Generation may benefit from being its own application. In next few weeks, perhaps, I would like to practice art general design and typography for a bit to create something as beautiful as that [Beautiful Web Type](http://hellohappy.org/beautiful-web-type) demo.



## Added Stop Play Buttons To The Beat Sequencer It Just Seems Right Overall Adding Extras Is A Bad Idea But In Larger Programs...
### March 30th 2020, 6:07:28 pm EDT
<meta itemprop="dateCreated" datetime="2020-03-30T22:07:28.661Z">

Added Stop/Play buttons to the Beat Sequencer, it just seems right. Overall, adding extras is a bad idea, but in larger programs, if there are too many extras one can add a Advanced Mode. It would work here too, but a couple of extra buttons is OK.



## The Future Well It Takes About 50 Lines Of Code To Make Music To Make Mp 3 Files With Mostly Randomly Generated Fresh Sounding...
### March 30th 2020, 4:16:36 pm EDT
<meta itemprop="dateCreated" datetime="2020-03-30T20:16:36.830Z">

THE FUTURE: Well, it takes about 50 lines of code to make music, to make MP3 files with mostly randomly generated fresh sounding music. There is no server requirement, everything happens in the browser crunching math in the user's CPU. Let us make future now, not tomorrow. I will now aim to create a Workout Song generator Widget/Gadget, that upon straining the CPU a bit will pop out files that can be played on the phone during workout. From Soundboard, to Beat Sequencer, to Song Maker. You might have noticed that the Beat Sequencer started sounding too complicated for a bit, "BPM", "Parts", "Beats", "Octave", "Note", "Scientific Notation", this is one lesson I want to take away from the Sequencer, the song generator will have to be massively abstract, it will have a setting for Softness rather than Samples and Presets, it will say Advanced Workout, Intermediate Workout, instead of BPM and Beats. I'll abstract away all the music-y stuff. Yah.



## Huge Problem Here Is Cpu Speed My Older Phone Tablet Cant Keep Pace Too Much Cpu Processing Is Required To Make Music Live N...
### March 30th 2020, 3:53:37 pm EDT
<meta itemprop="dateCreated" datetime="2020-03-30T19:53:37.293Z">

Huge problem here is CPU speed. My older phone/tablet can't keep pace, too much CPU processing is required to make music live. Now, there is a way around this, kind of. It should be possible to make a song file and then play it. As far as modern technologies go, CHEAP MOBILE DEVICES are not ready to make music. There is a million ways around this, but each and every one of those comes with drawbacks. This technology works on fast desktops, and that is what I will recommend that people use.



## Shebang Slash Soundboard Is Complete Keeping Things Simple Is How Good Software Gets Done Good Now I Need To Add More Presets...
### March 30th 2020, 3:47:37 pm EDT
<meta itemprop="dateCreated" datetime="2020-03-30T19:47:37.293Z">

Shebang Slash Soundboard is complete. Keeping things simple, is how good software gets done good. Now I need to add more presets, that should be fun. The preset data format looks like binary code, here is the Closed Hat for Billie Jean Meow Mix: {label:'Closed Hat', device:'lofi', octave:6, note:'C', data:expandNotation('1010 1010 1010 1010 1010 1010 1010 1010')} I came up with this, there is a bunch of repetitive stuff in data files, so I cooked up this 0/1 thing and a function that expands it into the data that the program ends up using.



## Renamed The Lofi Soundboard To Shebang Slash Soundboard...
### March 30th 2020, 3:05:41 pm EDT
<meta itemprop="dateCreated" datetime="2020-03-30T19:05:41.707Z">

Renamed the LOFI Soundboard to Shebang Slash Soundboard



## Shebang Slash Soundboard Has A Very Simple But Powerful Start Loading Progress Bar Done Setup This Type Of Programming Has...
### March 30th 2020, 3:03:41 pm EDT
<meta itemprop="dateCreated" datetime="2020-03-30T19:03:41.707Z">

Shebang Slash Soundboard has a very simple but powerful Start, Loading, Progress-Bar, Done, setup. This type of programming has only been available for 2 years. It is a combination of Svelte, ES6, SCSS, Rollup, Sapper and Bootstrap.



## Github The Company Hosting The Site And The Site It Self Is Becoming Sluggish So I Am Opening A New Experiment I Am Going To...
### March 30th 2020, 11:54:36 am EDT
<meta itemprop="dateCreated" datetime="2020-03-30T15:54:36.578Z">

Github, the company hosting the site, and the site it self is becoming sluggish, so I am opening a new experiment. I am going to add control over loading resources. For example the Shebang Slash soundboard will come with a Start or Load button, the .mp3 samples that it loads will only start loading into the browser when Start/Load is pressed. · Eventually I would like to make a website for creating workout music, so stuff like resource control will come in really handy dandy. If CATPEA goes down it is because GitHub broke some promise, I'll be back up within a couple of days.



## Drawer Component
### March 30th 2020, 10:55:21 am EDT
<meta itemprop="dateCreated" datetime="2020-03-30T14:55:21.933Z">

I named the panel I've been poking at [drawer](https://github.com/fantasyui-com/catpea-com/tree/master/src/style/drawer). You can take a look at the graphical configuration in CSS language [here](https://github.com/fantasyui-com/catpea-com/blob/master/src/style/drawer/drawer.scss). I am learning to make components for [Bootstrap](https://getbootstrap.com/) this has been a hobby of mine for many years now. It feels nice to be making progress here. I still need to create a configuration section that stores all the sizing/color information, with descriptions and such. The [drawer page](https://github.com/fantasyui-com/catpea-com/tree/master/src/style/drawer) shows examples of how to use the Drawer, that language is called HTML. [Bootstrap](https://getbootstrap.com/) developers would frown on my work thus far because the drawer component can almost be made in another way, they actually have similar things. But I am thinking about creating components for a [Digital Audio Workstation (DAW)](https://www.google.com/search?q=Digital+Audio+Workstation&tbm=isch) like [Ableton](https://www.ableton.com/en/live/), right now the drawer is not impressive, but it will evolve beyond what Bootstrap can do. Already I am thinking that I should not use colors, but rather transparent shadows, so whatever color is in the background the drawer will inherit it automatically. [Bootstrap](https://getbootstrap.com/) creates flat/raised things, and my additions may end up being graphically sunken. Plus, [Bootstrap](https://getbootstrap.com/) creates structure, and I use it for layout and containers. They don't really create content that is specific for some purpose (like my DAW), they limit themselves to general purpose things. They do sell themes, and if I ever completed this project, they may accept mine into their store. I have much more to learn, and I still have to get used to their way of doing things.



## Added A Collapsible Panel To The Shebang Slash Beat Sequencer It Looks Good Works Ok I Will Need To Do A Lot Of Configuration...
### March 29th 2020, 8:37:57 pm EDT
<meta itemprop="dateCreated" datetime="2020-03-30T00:37:57.352Z">

Added a collapsible panel to the Shebang Slash Beat Sequencer. It looks good, works OK. I will need to do a lot of configuration work before I can use it throughout. But this is the right path, this is where I will ![Squirrel](image/research-0021-squirrel.svg) away all the complexity, it will be a simple UI, but also contain all kinds of features a click away.



## Yah I Need New Gui Technologies The Browser Stuff Is Old And Brittle I Am Looking To And Just At A Glance I Can See I Need...
### March 29th 2020, 4:10:34 pm EDT
<meta itemprop="dateCreated" datetime="2020-03-29T20:10:34.833Z">

Yah, I need new GUI technologies, the browser stuff is old and brittle. I am looking to [ZBrush](https://www.google.com/search?q=zbrush+gui&tbm=isch) and [Photoshop](https://www.google.com/search?q=photoshop+gui&tbm=isch). Just at a glance I can see I need more spacing, more dark, and above all collapsible panels. Working on nicer preset selector.

![Gui 1](image/research-0020-gui1.png)

GUI Ideas



## Well Ive Noticed The Ui Is Not Loading On My Cheap Mobile Tablet And The Dropdowns I Use For Everything Look Ugly Plus They...
### March 29th 2020, 9:14:44 am EDT
<meta itemprop="dateCreated" datetime="2020-03-29T13:14:44.761Z">

Well, I've noticed the UI is not loading on my cheap mobile tablet. And the dropdowns I use for everything look ugly, plus they are hard to consistently style across different browsers and devices. UI needs a new strategy. Now, I will leave the Shebang Slash Sequencer in, I won't make radical changes to it. But, time has come to think about a new GUI technology.



## I Continue My Work On The Little Shebang Slash Beat Sequencer
### March 28th 2020, 6:31:17 pm EDT
<meta itemprop="dateCreated" datetime="2020-03-28T22:31:17.209Z">

I continue my work on the little Shebang Slash Beat Sequencer, I am searching for an easy UI configuration, that is also fully featured (can edit a huge song), and has a huge area for configuring things beyond Octave and Note. The area that opens up below when user clicks a line number will be used for sound synthesis configuration that could be as many as 10 dropdowns. I don't like horizontal scrolling, this is what this test is about. But there is something wrong with Vertical Scrolling, like here in the [Mod Trackers](https://www.youtube.com/watch?v=gdSslkrN1kk), it just feels too awkward to compose a song downwards. On the other hand I don't want to recreate the [Ableton](https://www.ableton.com/en/live/) UI, editing music this way is too slow. I'll probably keep creating these little UI widgets, but begin connecting them together under a common beat. This way the end result is a dashboard of easy to use musical instruments, and probably some fat squirrels.



## Updated Warrior Book And Videos
### March 21st 2020, 4:14:25 pm EDT
<meta itemprop="dateCreated" datetime="2020-03-21T20:14:25.929Z">

Updated Warrior Book and Videos on catpea.com



## Updated Neumorphism
### February 4th 2020, 7:33:31 pm EST
<meta itemprop="dateCreated" datetime="2020-02-05T00:33:31.100Z">

Updated the [Neumorphism](https://fantasyui-com.github.io/neumorphism/) tool with support for mobile/tablet and light source direction.



## Created A Tool For Updating The Book
### February 2nd 2020, 8:48:18 pm EST
<meta itemprop="dateCreated" datetime="2020-02-03T01:48:18.732Z">

Created a tool for updating the book and Cat Pea GUI [Neumorphism](https://fantasyui-com.github.io/neumorphism/)



## Hee Haw What A Ride I Split The User Interface Components Used In From And Created A Creatively Named Stand Alone Project...
### January 30th 2020, 11:07:32 pm EST
<meta itemprop="dateCreated" datetime="2020-01-31T04:07:32.063Z">

Hee Haw, what a ride, I split the user Interface components used in [The Warrior Book](http://catpea.com/warrior) from [Cat Pea Code](https://github.com/fantasyui-com/catpea-com) and created a creatively named stand-alone project: [book-gui](https://fantasyui-com.github.io/book-gui/?path=/story/widgets--illustration)



## Added To The Main Menu It Is A Complicated Effort As The Book Was Converted To A Pure Data File And Now Needs Components To R...
### January 27th 2020, 10:34:30 pm EST
<meta itemprop="dateCreated" datetime="2020-01-28T03:34:30.737Z">

Added [The Warrior Book](http://catpea.com/warrior) to the main menu. It is a complicated effort as the book was converted to a pure data file, and now needs components to render the data. It made the book very portable, but there are a couple of broken internal links, and perhaps a bug or two.



## The Squirrel Expert System
### January 24th 2020, 8:01:25 pm EST
<meta itemprop="dateCreated" datetime="2020-01-25T01:01:25.484Z">

The Squirrel Expert System can hide topics that the user already discussed. Squirrel's mind can be configured via Preferences pane. Added warning to anomalous IQ settings. Added secondary directives.



## Added Squirrel AI!
### January 24th 2020, 9:39:17 am EST
<meta itemprop="dateCreated" datetime="2020-01-24T14:39:17.606Z">

Added Squirrel AI.



## Added Squirrel Icons Squirrel Svg...
### January 23rd 2020, 9:11:52 pm EST
<meta itemprop="dateCreated" datetime="2020-01-24T02:11:52.327Z">

Added Squirrel

![Squirrel](image/research-0010-squirrel.png)



## Improved News Readability...
### January 23rd 2020, 9:06:48 pm EST
<meta itemprop="dateCreated" datetime="2020-01-24T02:06:48.327Z">

Improved news readability.



## Added Prev Next Navigation To Random Videos
### January 23rd 2020, 8:34:33 pm EST
<meta itemprop="dateCreated" datetime="2020-01-24T01:34:33.923Z">

Added prev/next navigation to random videos.



## Svelte Research
### January 23rd 2020, 8:16:31 pm EST
<meta itemprop="dateCreated" datetime="2020-01-24T01:16:31.658Z">

Continued exploring potential for component re-usability. [Svelte's](https://svelte.dev/) [Sapper](https://sapper.svelte.dev/) is following WebComponents where templating is concerned (I can reference same slot multiple times), CSS module isolation works great, metaprogramming HTML with {#if}{:else}{/if} is fine. It does beat [Marko](https://markojs.com/), [React](https://reactjs.org/) and [Vue](https://vuejs.org/).



## Added Autopause To Random Video Player
### January 23rd 2020, 7:51:10 pm EST
<meta itemprop="dateCreated" datetime="2020-01-24T00:51:10.250Z">

Added Autopause to Random Video player, improved its randomness.



## Made The Little News Squirrels Shake
### January 22nd 2020, 8:46:22 pm EST
<meta itemprop="dateCreated" datetime="2020-01-23T01:46:22.215Z">

Made the little news squirrels shake when a user pokes at them.



## Testing Component Composition By Generalizing Bodybuilding Advice Preferences Pane Into A Employing The Container In Https...
### January 22nd 2020, 8:07:38 pm EST
<meta itemprop="dateCreated" datetime="2020-01-23T01:07:38.773Z">

Testing component composition by generalizing Bodybuilding Advice Preferences Pane into a [generic reusable container](https://github.com/fantasyui-com/catpea-com/blob/0b3dd8426cc0cdcf9ade924293489c3f63996fd1/src/containers/PreferenceCard.svelte#L46). Employing the container in [News component](https://github.com/fantasyui-com/catpea-com/blob/0b3dd8426cc0cdcf9ade924293489c3f63996fd1/src/components/News.svelte#L45).



## Improved The Randomness Of Bodybuilding Advice
### January 21st 2020, 10:38:19 pm EST
<meta itemprop="dateCreated" datetime="2020-01-22T03:38:19.680Z">

Improved the randomness of Bodybuilding Advice. Items begin repeating after about 84 selections. I added a tiny little sub-progress bar to show when the system will reset, re-shuffle, and begin parading the newly re-shuffled list.



## Added Preferences Pane To Bodybuilding Advice Component
### January 21st 2020, 10:23:19 pm EST
<meta itemprop="dateCreated" datetime="2020-01-22T03:23:19.680Z">

Added Preferences Pane to Bodybuilding Advice on [Cat Pea](http://catpea.com).

Bodybuilding Advice is meant to serve as a starting point for more complex components.



## I Love The Squirrel Octicon
### January 21st 2020, 10:22:19 pm EST
<meta itemprop="dateCreated" datetime="2020-01-22T03:22:19.680Z">

Testing [octicons](https://octicons.github.com/). I love the squirrel icon.

![Squirrel](image/research-0001-squirrel.png)




