---
layout: post
title:  "Welcome to Jekyll!"
date:   2015-04-20 08:43:59
author: Ben Centra
categories: Jekyll
tags:	jekyll welcome
cover:  "/assets/instacode.png"
---

You’ll find this post in your `_posts` directory. Go ahead and edit it and re-build the site to see your changes. You can rebuild the site in many different ways, but the most common way is to run `jekyll serve`, which launches a web server and auto-regenerates your site when a file is updated.

## Adding New Posts

To add new posts, simply add a file in the `_posts` directory that follows the convention `YYYY-MM-DD-name-of-post.ext` and includes the necessary front matter. Take a look at the source for this post to get an idea about how it works.

### Tags and Categories

If you list one or more categories or tags in the front matter of your post, they will be included with the post on the page as links. Clicking the link will bring you to an auto-generated archive page for the category or tag, created using the [jekyll-archive][jekyll-archive] gem.

### Cover Images

To add a cover image to your post, set the "cover" property in the front matter with the relative URL of the image (i.e. <code>cover: "/assets/cover_image.jpg"</code>).

### Code Snippets

You can use [highlight.js][highlight] to add syntax highlight code snippets:

Use the [Liquid][liquid] `{% raw %}{% highlight <language> %}{% endraw %}` tag to add syntax highlighting to code snippets.

For instance, this template...
{% highlight html %}
{% raw %}{% highlight javascript %}    
function demo(string, times) {    
  for (var i = 0; i < times; i++) {    
    console.log(string);    
  }    
}    
demo("hello, world!", 10);
{% endhighlight %}{% endraw %}
{% endhighlight %}

...will come out looking like this:

{% highlight javascript %}
function demo(string, times) {
  for (var i = 0; i < times; i++) {
    console.log(string);
  }
}
demo("hello, world!", 10);
{% endhighlight %}

Syntax highlighting is done using [highlight.js][highlight]. You can change the active theme in [head.html](https://github.com/bencentra/centrarium/blob/2dcd73d09e104c3798202b0e14c1db9fa6e77bc7/_includes/head.html#L15).

### Blockquotes

> "Blockquotes will be indented, italicized, and given a subdued light gray font. These are good for side comments not directly related to your content, or long quotations from external sources." - Some Smart Guy

### Images

Lightbox has been enabled for images. To create the link that'll launch the lightbox, add <code>data-lightbox</code> and <code>data-title</code> attributes to an <code>&lt;a&gt;</code> tag around your <code>&lt;img&gt;</code> tag. The result is:

<a href="//bencentra.com/assets/images/falcon9_large.jpg" data-lightbox="falcon9-large" data-title="Check out the Falcon 9 from SpaceX">
  <img src="//bencentra.com/assets/images/falcon9_small.jpg" title="Check out the Falcon 9 from SpaceX">
</a>

For more information, check out the [Lightbox][lightbox] website.

### Tooltips

With Tippy.js, you can add tooltips to your text with a little bit of HTML and JavaScript. First, create the tooltip trigger: `<span class="tooltip" id="someId">trigger</span>`. Then in a `<script>` tag at the bottom of your page, add some code to initialize the tooltip when the document is ready: `window.tooltips.push(['#someId', { content: "Content" }])`

See the [Tippy.js docs](https://atomiks.github.io/tippyjs/) for additional configuration that you can provide for your tooltips.

You can also use a Liquid `include` to import tooltip text or HTML from an external file: 

```
window.tooltips.push(['#someOtherId', { content: "{% raw %}{% include tooltips/example.html %}{% endraw %}" }])
```

To modify the styles for tooltip triggers, find the `.tooltip` class in `_layout.scss`.

Here's an <span class="tooltip" id="someId">example tooltip</span>, and <span class="tooltip" id="someOtherId">here's another</span>.

<br/>
{% include page_divider.html %}

Check out the [Jekyll docs][jekyll] for more info on how to get the most out of Jekyll. File all bugs/feature requests at [Jekyll’s GitHub repo][jekyll-gh]. If you have questions, you can ask them on [Jekyll’s dedicated Help repository][jekyll-help].

[jekyll]:      http://jekyllrb.com
[jekyll-gh]:   https://github.com/jekyll/jekyll
[jekyll-help]: https://github.com/jekyll/jekyll-help
[highlight]:   https://highlightjs.org/
[lightbox]:    http://lokeshdhakar.com/projects/lightbox2/
[jekyll-archive]: https://github.com/jekyll/jekyll-archives
[liquid]: https://github.com/Shopify/liquid/wiki/Liquid-for-Designers

<script>
window.tooltips = window.tooltips || []
window.tooltips.push(['#someId', { content: "This is the text of the tooltip!" }])
window.tooltips.push(['#someOtherId', { content: "{% include tooltips/example.html %}", placement: "right" }])
</script>
