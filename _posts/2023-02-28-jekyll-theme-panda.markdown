---
layout: post
title: jekyll-theme-panda
date: 2023-02-28 17:00:00
homepage: https://github.com/sorphwer/jekyll-theme-panda
download: https://github.com/sorphwer/jekyll-theme-panda/archive/refs/tags/Release.zip
demo: https://riino.site/jekyll-theme-panda/
author: Riino Zhang
thumbnail: jekyll-theme-panda.png
license: MIT License
license_link: http://opensource.org/licenses/MIT
---

[![SonarCloud](https://sonarcloud.io/images/project_badges/sonarcloud-white.svg)](https://sonarcloud.io/summary/new_code?id=sorphwer_jekyll-theme-panda)

[![Gem Version](https://badge.fury.io/rb/jekyll-theme-panda.svg)](https://badge.fury.io/rb/jekyll-theme-panda)  ![](https://ruby-gem-downloads-badge.herokuapp.com/jekyll-theme-panda?type=total) [![Quality Gate Status](https://sonarcloud.io/api/project_badges/measure?project=sorphwer_jekyll-theme-panda&metric=alert_status)](https://sonarcloud.io/summary/new_code?id=sorphwer_jekyll-theme-panda)

Theme Showcase : [RiinoSite - Jeklyy-Theme-Panda](https://riino.site/jekyll-theme-panda/)

DEMO： [RiinoSite Blog](https://riino.site/)

[TOC]

## Installation

### Choice 1 : Set up via jekyll-remote-theme

**Step 1**  Install [jekyll-remote-theme](https://github.com/benbalter/jekyll-remote-theme)

**Step 2**  Fork this [jekyll-theme-panda]( https://github.com/sorphwer/jekyll-theme-panda)

**Step 3**  Set `remote_theme : <your-github-username>/jekyll-theme-panda`

### Choice 2 : Set up via bundler (Not available in GithubPage)

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "jekyll-theme-panda"
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: jekyll-theme-panda
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install jekyll-theme-panda

### Choice 3 : Directly use this repo 

Clone this repo or download this repo in your computer, then edit files in `_post` and edit `_config.yml`.

**Tips: Please keep using one level permalink:**

```
permalink: /:year-:month-:day-:title:output_ext
```

**Since navigation header uses relative path in default situation**

## YAML front matter example

### post

```yaml
---
layout: post
title:  "Theme Showcase"
subtitle: "Features and yaml configuration demo" #optional 
author: "RiinoSite"    #optional
date:   2020-03-01 17:08:09 +0800
tags:           #optional
- jekyll 
- doc
status: doc     #optional,if status is 'WIP', will display a WIP banner
last-modify: 2020-07-10 10:30:00 +0000 #optional
toc: true       #default: true
sticky : true   #default: false
hide: false     #default: false (hide from Home page only)
mathjax: true   #default: true
mermaid: true   #default: true
banner-title: THEME DOC #optional
banner-subtitle: Readme.md #optional, must be with banner-title
never-expired: false #default fause, if ture , expired banner will not display
# toc options: inline, true, false
render_with_liquid: true #default: true, set as false to disable liquid
---
```

### album

```yaml
---
layout: album
title: Postcard Series 2019
hidden: true #must be true
description: ['text1','text2']
cover_number: 2 #determine which image will be the cover
photos:
 - url: /img/albums/postcard/poster-1.jpg
   description: photo description
 - url: /img/albums/postcard/poster-11.jpg
   description: photo description
---
```

### preset

```yaml
---
layout: preset
title: Shilin Filter
cover_before: /img/presets/shilin/shilin_before.jpg
cover_after: /img/presets/shilin/shilin_after.jpg
hidden: true #must be true
description: ['text']
download_url: google.com
derivation: ['text']
derivation_img : ./img/presets/shilin/shilin_after_1.jpg
samples:
 - title: 'Atmosphere adjustment'
   subtitle: '冷たい雰囲気を与える'
   img_url: '/img/presets/shilin/shilin_1.jpg'
   img_text: '@ Twatutia, Taipei, 2019'
---
```



## Toolkits

### Available layouts:

| name       | description                                              | filename                 |
| ---------- | -------------------------------------------------------- | ------------------------ |
| default    | default layout with contents in a `home-message` section | _layouts\default.html    |
| home       | index page layout                                        | _layouts\home.html       |
| forarchive | archive page layout                                      | _layouts\forarchive.html |
| post       | post page layout                                         | _layouts\post.html       |
| blank      | default layout without `home-message` section            | _layouts\blank.html      |
| preset     | preset introduction page layout                          | _layouts\preset.html     |
| presetlist | presets page layout                                      | _layouts\presetlist.html |
| album      | album page layout                                        | _layouts\album.html      |
| albumlist  | albums page layout                                       | _layouts\albumlist.html  |

**Available includes(html):**

| name   | description                                   | filename              |
| ------ | --------------------------------------------- | --------------------- |
| footer | footer component, can be edited in _config    | _includes\footer.html |
| head   | head tag                                      | _includes\home.html   |
| header | navigator component, can be edited in _config | _includes\header.html |
| search | search bar plug-in                            | _includes\search.html |

**Available includes(md):**

| name            | description                           | path                   |
| --------------- | ------------------------------------- | ---------------------- |
| profile content | markdown content in Profile in header | _includes\about\en.md  |
| policy content  | markdown content in Policy in footer  | _includes\policy\en.md |

**Syntax colors:**

Check `_sass\syntax.scss`

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/sorphwer/jekyll-theme-panda. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Development

We suggest fork this repo and set it as your own **remote_theme** to modify this theme.

## About Search Tool

`jekyll-theme-panda` is currently use [jekyll-search-bar](https://github.com/sorphwer/jekyll-search-bar) hosted in riino.site in default mode. To modify this search tool, please check the corresponding github page.

Notice: Search tool can only be used within `post` type posts. To disable search tool, create a blank `search.json` in your root.

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
