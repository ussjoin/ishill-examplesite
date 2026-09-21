+++
date = "2025-05-01"
draft = false
title = "An Example Imprint: a Field Guide to Wheatpasting"
author = "Crimethinc"
summary = "Wallpaper in cities; how does it work, exactly?"

[build]
  render = "always"
[[cascade]]
  [cascade.build]
    list = "local"
    publishResources = false
    render = "never"
+++

Imprints are a special kind of resource. Unlike leaflets and monographs, imprints aren't going to be rendered to PDFs, with the intention being that you'd use these for things that are _already_ PDFs (impressed or not). This is so that one can distribute art zines, minizines, or anything else where creating the "final form" is done outside Ishill and Hugo. The metadata in the Markdown file is used for the Hugo display (e.g., on the homepage), but isn't transferred in any way to the PDF. (So why have this resource type at all? Because it lets you publish content on the web, and include it in your RSS/Atom feeds. If you aren't using Ishill as a web platform, you can just ignore these.)

The following is, as indicated in the document, Crimethinc's excellent "[Field Guide to Wheatpasting](https://crimethinc.com/zines/field-guide-to-wheatpasting)." I didn't write it.

* [A Field Guide to Wheatpasting (Impressed)](./field-guide-to-wheatpasting_print_black_and_white.pdf)
