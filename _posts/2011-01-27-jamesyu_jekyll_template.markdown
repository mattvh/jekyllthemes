---
title: James Yu Jekyll Template
homepage: https://github.com/jamesyu/jamesyu_jekyll_template
download: https://github.com/jamesyu/jamesyu_jekyll_template/archive/master.zip
demo: http://www.jamesyu.org
author: James Yu
thumbnail: jamesyu-jekyll-template.jpg
license: MIT License
license_link: https://github.com/jamesyu/jamesyu_jekyll_template/blob/master/LICENSE
github_repo: jamesyu/jamesyu_jekyll_template
stars: 32
---

This is the Jekyll based blog template for my personal blog at
[jamesyu.org](http://www.jamesyu.org/). You are free to use this
template under the MIT license.

The design is as minimal as possible so that the site would focus on
the writing and my projects.

## Usage

I highly recommend reviewing
[Paul Stamatiou's wonderful Jekyll tutorial](http://paulstamatiou.com/how-to-wordpress-to-jekyll)
first to get oriented.

You will need to install [Jekyll](https://github.com/mojombo/jekyll),
[Sass](http://sass-lang.com/), and [RDiscount](https://github.com/rtomayko/rdiscount)
to get everything working.

To start Jekyll and Sass watching directories and regenerating files on
the fly, simply run start.sh, and to stop, simply run stop.sh.

To deploy:

    rake deploy

To start a new post in Textmate:

    rake new title='My Title'

And that's it.

## Customizing

I replaced everything personal with placeholder text, so it should be
easy to customize it to your needs. In the about.html and footer, you
can optionally upload a photo of yourself.

In about.html, you'll find slots of show off your projects and whatever
else you'd like to display.
