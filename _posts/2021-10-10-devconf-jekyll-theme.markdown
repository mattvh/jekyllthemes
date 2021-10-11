---
layout: post
title: DevConf Jekyll Theme
date: 2021-10-10 20:21:10 -05:00
homepage: https://github.com/la-rebelion/DevConf-Jekyll-Theme
download: https://github.com/la-rebelion/DevConf-Jekyll-Theme/archive/refs/heads/master.zip
demo: https://la-rebelion.github.io/DevConf-Jekyll-Theme
author: "Original - Xiaoying Riley | Mod: La Rebelion Labs/Adrian Escutia"
thumbnail: DevConf-Jekyll-Theme-thumbnail.png
license: Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International (CC BY-NC-SA 4.0)
license_link: https://github.com/la-rebelion/DevConf-Jekyll-Theme#author--license
---
# Jekyll theme: DevConf Jekyll Theme
[Bootstrap 5 Conference Template For Tech Conferences and Events](https://gumroad.com/a/547198067/oTvro) by [3rd Wave Media](https://gumroad.com/a/547198067), modified by [La Rebelion Labs](https://github.com/la-rebelion)

DevConf is a free Bootstrap 5 for Jekyll. The idea of the template is to emulate 
an Eventbrite like website, where you can publish and marketing you different events, 
it can be easily customized to publish your events, training and workshops, you just need 
to add a YAML file with the metadata for your event, and the template will do the magic.

## Demo

Check the [demo](https://la-rebelion.github.io/DevConf-Jekyll-Theme) in action.

The main page looks like this:

![DevConf Jekyll Theme Home](https://github.com/la-rebelion/DevConf-Jekyll-Theme/blob/master/assets/images/template_screenshots/DevConf-Jekyll-Theme.png?raw=true)

## Features in Jekyll Theme:

* Featured or sponsored event in the main page.
* Sections that can be customized:
  * Listing of all available events.
  * **About** section, where you can describe what is your event about and why 
people should assist. Includes a countdown for the event date. Optionally, include 
videos from previous events to engage possible visitors even more.
  * **Schedule**, you can define different dates for your event, and a flexible 
plan adding as many events per date as you need.
  * Create your "catalog" of **speakers**, then, include the speaker name in the 
event(s) to associate the speaker with the event(s) he participates in. The template 
correlates speakers with events.
  * Custom **sponsors** per event, each event can define its own sponsors with links 
to their websites.
  * Stats section where you can list the expected people, number of conferences, 
number of days of the event, etc. Add the data you need, fully customizable.
  * Define the pricing schema for your **tickets** with _call to action_ buttons.
  * Venue section to let the people how to get to the event, include pictures of the 
locations or previous events.
* Includes a blog link to allow you create you inbound marketing strategy with content.

### Features from Original, Bootstrap Version:

* Fully Responsive
* HTML5 + CSS3
* Built on Bootstrap 5
* 1500+ FontAwesome icons
* SCSS source files included
* Compatible with all modern browsers

## Installation

1. [Fork](https://github.com/la-rebelion/DevConf-Jekyll-Theme/fork) your own copy of the repository to your account.
   1. Clone your repository to add/edit your own files.  
`git clone git@github.com:<YOUR-GIT-USER-NAME>/DevConf-Jekyll-Theme.git`
2. Per each event, in the "root" directory create a markdown file with the event `slug` in the `front matter`.
```yaml
---
layout: event
event: we-are-developers-2024
---
```
3. Create the manifest file in the `_data/events` directory, same name as `slug`. You can include the following inline metadata (first line) to specify the schema that can help you to validate the manifest correctness.
```yaml
# yaml-language-server: $schema=https://schemas.rebelion.la/dev-conf-v1.0.json
name: We Are Developers 2024
slug: we-are-developers-2024
... # this is just the head example, continue
```
4. Create as many events as you want.
5. Make sure GitHub Pages are turned on in the repository settings, and pointing to the `main` or `master` branch (where you cloned this repo)
6. Commit and push changes.
7. Your new site should be ready at https://username.github.io/DevConf-Jekyll-Theme

To run it locally:

1. Install [Jekyll](https://jekyllrb.com/docs/).  
`gem install jekyll bundler`
2. Build the site and make it available on a local server  
`bundle exec jekyll serve  --config _config.yml,_config_development.yml`

In example above you can switch part of your config settings depending on the environment, settings in later files override settings in earlier files.

---

## Original Theme  
This Jekyll theme is based on the Bootstrap 5 DevConf-Theme by [3rd Wave Media](https://gumroad.com/a/547198067).

### Author & License

The original Bootstrap template is made by UX/UI designer [Xiaoying Riley](https://twitter.com/3rdwave_themes) for developers and is 100% FREE as long as you **keep the footer attribution link**. You do not have the rights to resell, sublicense or redistribute (even for free) the template on its own or as a separate attachment from any of your work.

If you'd like to **use the template without the footer attribution link**, you can [buy the **commercial license** via the theme website](https://gumroad.com/a/547198067/oTvro)
