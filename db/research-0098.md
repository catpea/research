---
id: research-0098
title: Handlebars Is Dangerous, Use Mustache
category: research
tags: Programming
date: 2020-08-28T20:16:11.739Z
draft: false
deleted: false
---

I have tested handlebars as a lightweight templating engine and found that it hides data,
this is called contexts, when inside a loop, all the data outside of it is gone and must be accessed via "../outside" pattern.

While I was able to deal with this, I discovered a nested each bug: https://github.com/handlebars-lang/handlebars.js/issues/1686 that appears to treated with low priority. Nested loops are missing data! that is not to be tolerated, at all.

My search was a search for the lowest possible common denominator in the world of templates, it has begun prior to es6, and I hope to avoid template strings as nested mappings of nested templates are ugly (see React.)

I have now re-discovered mustache, and it seems OK, the context (variable scope) is not broken/obscured. However there is no each/loop statement but rather that automatic {{#someArray}} Hello {{.}}! {{/someArray}}, which is not perfect but tolerable.

In conclusion, Handlebars still has bugs in 2020 and hates variable scopes for some reason. Mustache has a bit more terse syntax, it seems OK.

I am switching from Handlebars to Mustache:

```mustache
// Handlebars (Note each)
{{#each someArray}}
  Hello {{.}}!
{{/each}}

```

```mustache
// Mustache
{{#someArray}}
  Hello {{.}}!
{{/someArray}}

```

Note to self avoid Handlebars because contents of #each loop have no access to global variable scope without anomalous provisions.

- https://handlebarsjs.com/ (sadness)
- http://mustache.github.io/ (okayesness)
