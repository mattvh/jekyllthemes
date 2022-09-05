---
layout: post
title: mico
date: 2022-09-05 00:00:00 +06:00
homepage: https://github.com/zfett/mico
download: https://github.com/zfett/mico/archive/refs/tags/v1.0.zip
demo: https://zachfette.rs/mico
author: "Zachary Fetters"
thumbnail: mico-theme.jpg
license: MIT License
license_link: https://github.com/zfett/mico/blob/main/LICENSE
---
# Welcome to the 'mico' theme!

The mico theme for Jekyll is a clean, minimalist, and comfy theme for those seeking a simplistic yet familiar aesthetic. Similar to older styles of themes present in the mid-2010's, mico is meant to allude to an earlier time on the Internet, while retaining the modern comforts of today. Due to its basic design, mico is automatically suited to screens of any and all sizes, scaling comfortably without losing any content.

mico was built with GitHub Pages in mind, being able to be immediately deployed with very little configuration and elbow grease.

mico is licensed under the MIT license and is available to all for free. I encourage those who need a more specialized experience to fork the original repo on GitHub and configure to their heart's content!

## Configuration

mico, while simplistic, also contains quite a bit of customization options to make the theme truly yours!

In the site's `_config.yml` file, there lies some customization options that apply to the entire site. The following options are available for you to change:

- `title`: Defines the site's title. Shows up in the header and the first part of the browser tab title.
- `description`: The site's default description, used for SEO purposes. Defaults to the post's content in blog posts.
- `timezone`: Defines the site's timezone. Must match the format of timezones in the [tz database](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones).
- `encoding`: The site's text encoding. Leave this on `utf-8` unless you have an edge case.
- `language`: The site's default language. If your site is multilingual, set it to the default language of your site. Must be in the [BCP47 syntax](https://datatracker.ietf.org/doc/html/rfc5646).
- `allowCodeCopy`: If set to `true`, allows people to copy the text in code blocks on your site.

Any options below the warning comment are advanced options and should only be changed **if you know what you're doing.** Changing these options to invalid settings can break your site and prevent it from being built correctly.

## Installation

To install this theme on a GitHub Pages site, you must make sure that the gem [jekyll-remote-theme](https://github.com/benbalter/jekyll-remote-theme) is added to your site's Gemfile and configured correctly. Next, ensure that the line `remote_theme: zfett/mico` or `remote_theme: https://github.com/zfett/mico` is added to your site's `_config.yml` file. When in doubt, just fork this repo and edit the contents yourself.

## Credits

Thanks to Caroline Hadilaksono & Tyler Finck of [The League of Moveable Type](https://www.theleagueofmoveabletype.com/junction) for their font, ["Junction"](https://www.theleagueofmoveabletype.com/junction). Licensed under the Open Font license.

Thanks to Nikita Prokopov on [GitHub](https://github.com/tonsky) for his font, ["Fira Code"](https://github.com/tonsky/FiraCode). Licensed under the OFL-1.1 license.
