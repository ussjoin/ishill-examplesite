+++
draft = false
title = "What's Ishill? Why Ishill? How Ishill?"
weight = 20

[params]
  author = "Brendan Francis O'Connor"
  author_url = 'https://ussjoin.com'
  original_url = 'https://codeberg.org/ussjoin/ishill'
  original_date = '2025-05-30'
+++

Hello ideally-human person! You've probably found this at [Codeberg](https://codeberg.org/ussjoin/ishill) or [GitLab](https://gitlab.com/ussjoin/ishill) or [GitHub](https://github.com/ussjoin/ishill), or possibly on a bench somewhere in meatspace. Read on to learn what you've found!

**Note: this monograph is always going to be incomplete, because the set of all things one can do with software is vast.** We hope it's useful to you even as-is. You're welcome to reach out for further assistance using the Issues function on [Codeberg](https://codeberg.org/ussjoin/ishill/issues), and I'll do my best to aid you (and add the things that confused you to this document so that they can help others!).

## The Pitch (Short)

Ishill ([pronounced](https://en.m.wikibooks.org/wiki/Romanian/Pronunciation_and_alphabet) EE-sheell) is a publishing stack, built on the excellent Hugo static site generator, to enable people to go quickly from "I have an idea I want to hand out as a zine" to "I have a stack of zines." It is named in honor of [Joseph Ishill](https://en.wikipedia.org/wiki/Joseph_Ishill), a printer.

## The Pitch (Human)

**Want to write/make zines** but don't have Illustrator or InDesign, and aren't a good enough artist to do twenty pages of lettering by hand? Want to use a computer to make longer content than the (lovely, if short) [minizine](https://www.icaboston.org/articles/make-your-own-mini-zine/) format? Optionally, want to simultaneously publish to print and the web, so that people who come across one of your zines can find more?

Ishill is for you. It's a zine publishing toolkit built on top of a blog toolkit, [Hugo](https://gohugo.io/), that lets you quickly create for web, PDF, and zine. If you want to, you can use it to publish your content _for free_ on the Internet, on a site only you control (no Facebook/Instagram/etc. nonsense), and with no lock-in; you can move it anywhere at a moment's notice. You can use a domain name you own, or use a free subdomain of either of two gigantic code providers (GitLab and GitHub) (or a reasonably-sized nonprofit code provider, Codeberg, which offers the same functionality), and use their computer time and web servers to distribute your content to the world. You can also host it on any web host that can host static sites, which is... pretty much all of them, for either free or nearly no money. You can also publish it on [Tor](https://www.torproject.org/), or even keep it offline and just use it as a fast Markdown-to-PDF pipeline.

Hugo is a "static site generator," so while it takes a teensy bit of tech knowledge to get it set up (we'll help you! That's what this zine is), you don't need to worry about securing it or getting hacked; most hosts for static sites don't let you configure anything that could get you in trouble, which is just how you should like it.

Sound good? Read on.

## The Pitch (if you spend a lot of time working with tech)

Ishill is a zine+web publishing stack built on top of [Hugo](https://gohugo.io/), the static site generator, with some add-on tools to do Markdown-to-zine efficiently. It has "happy path" deployments to [CodeBerg Pages](https://docs.codeberg.org/codeberg-pages/), [GitLab Pages](https://docs.gitlab.com/user/project/pages/) (using GitLab CI/CD), and [GitHub Pages](https://pages.github.com/) (using GitHub Actions), but since it's basically Hugo plus a couple of shell scripts, you can run it anywhere \*nix-y with a modicum of tech knowledge. If you need a full tech stack:

* [Hugo](https://gohugo.io/) for core Markdown-to-HTML rendering
* [Weasyprint](https://weasyprint.org/) for HTML/CSS-to-PDF rendering
* [PDFImpose](https://framagit.org/spalax/pdfimpose) for imposition (arranging the order of pages so you can print them double-sided and fold them into a zine)
* [Some Shell Scripts](https://xkcd.com/1319/) to tie it together.

## Why?

Why do this? A few reasons.

* For one thing, it's *obnoxiously* difficult to go from Markdown (or any simple text format) to zine. If it could fit on a [minizine](https://www.icaboston.org/articles/make-your-own-mini-zine/) (so less than half a normally-printed page), great. If it can fit on one printed page, front and back, one can make a four-half-page brochure with a bit of mucking about in Word, Pages, or similar. After that, it's not simple unless you have [Adobe InDesign](https://www.adobe.com/products/indesign.html) or other dedicated (and very expensive) prepress software; as far as I've found, there's no "happy path" for making the transition.
    * OK, technically [The Anarchist Library Bookbuilder](https://theanarchistlibrary.org/bookbuilder) has a stack to do this as well, but it doesn't use Markdown or anything else popular, instead defaulting to something only known to the kind of people who use Emacs. Ain't nobody got time for that, we want to publish zines!
* For another, [Travis Goodspeed](https://github.com/travisgoodspeed)'s groundbreaking and iconic [International Journal of Proof of Concept or Get the Fuck Out (POC||GTFO)](https://github.com/angea/pocorgtfo) introduced hackers to the idea that our research wasn't immune from memoryholing, at the end of the day; a lot of people, myself included, learned about [samizdat](https://en.wikipedia.org/wiki/Samizdat) from Travis. Zines have a lot of influences, but samizdat is certainly one of them.
    * I don't think it's a real surprise in 2026 that memory holing research and communcation is at top of mind for many communities.
* Why a website? Personally, when I find a zine that I like, I try to find the author and/or publishing collective to find more things that might be enjoyable, just as I do with authors. I wanted to make it as easy to publish a zine as a single blog post, and as easy to start a publisher as a blog site. If you don't want the website parts, this is a bit overengineered, but you can still use it to generate your zines and print them (which is, as noted above, a major pain).

## Neat Features of Ishill

There are a few neat things that come from using blog software to host and render zines. If you only care about using Ishill as a tool to go from Markdown to printable PDF, you may not care about them, but I thought they were useful.

### Deployable anywhere

Websites come in two very broad categories; "static" websites, where content cannot change from moment to moment (or in response to who's viewing it), and "dynamic," where it can. This is closely related to (but technically separate from) whether the site uses JavaScript, where part of the site runs on your computer/phone. The vast, vast majority of sites people use in 2026 are "dynamic" _and_ use JavaScript, but neither is required for a website, particularly one that isn't monetized. Similarly, most "easy ways to make websites" (Wordpress, SquareSpace, etc.) are dynamic.

Ishill is not dynamic. It's just a theme for the [Hugo](https://gohugo.io/) static site generator, and once Hugo generates a site, it's just a set of files. This means it can be hosted not just on expensive "dynamic" host providers, but on a huge array of "static web hosts." Those are often free (supported by hypervisor corporations, like [GitHub Pages](https://docs.github.com/en/pages), or other code hosts, like [Codeberg Pages](https://docs.codeberg.org/codeberg-pages/) or [GitLab Pages](https://docs.gitlab.com/user/project/pages/)) or very low cost. We use NearlyFreeSpeech.net, whose prices we like (and whose politics [are excellent](https://blog.nearlyfreespeech.net/2025/07/27/a-quick-note-to-our-queer-members/)), as our paid example site host. Many domain registrars have some sort of static site hosting for free when you register a domain. You get the idea.

Ishill also does not use JavaScript. That's not a Hugo requirement, we just don't wish to do so. You can certainly add JavaScript to it, but there's no need to do so. (Most JavaScript is used to track and monetize visitors, so, frankly, we don't want to do it and we don't have to.)

### Nothing External

Since there's nothing that requires that users run JavaScript or access any other server (this is atypical for websites in 2026, with Google Fonts, CDNs, tons of web trackers, ... but not actually difficult to do if I'm not trying to market to you and sell your data to brokers!), this means anyone can preserve your site forever, as long as the HTML, CSS, and PDF formats are still readable (they've been around since 1990, 1996, and 1993 respectively, and two are written in ASCII, a format written in 1963; it's not a clay tablet, but it's not bad for something intangible). There's nothing by default that can go offline and make your site stop working. That's pretty neat for the next feature:

### Self-Archiving

Ishill's build process (the thing that turns it from a pile of Markdown files into a website and bunch of zine PDFs) takes a copy of the whole site and puts it in a zip file, linked in the website footer. This means that **anyone** visiting the site can download the whole site, read it offline, or even put up a copy should yours go offline. Since there's nothing that requires that users run JavaScript or access any other server (this is atypical for websites in 2026, with Google Fonts, trackers, ... but not actually difficult to do if I'm not trying to market to you and sell your data to brokers!), this means anyone can preserve your site forever, as long as the HTML, CSS, and PDF formats are still readable (they've been around since 1990, 1996, and 1993 respectively, and two are written in ASCII, a format written in 1963; it's not a clay tablet, but it's not bad for something intangible). (And see the note above about samizdat.)

If you want to turn this off, set `enableArchive = false` in the `[params]` section of your `config.toml` file.

**NB**: the process creates a copy of your finished site, not the Markdown and build scripts used to create it. If you want to keep a backup of that (you should), make sure to back up your site's folder on your computer--either by creating your own fork on a Git host (Codeberg, GitLab, GitHub, whatever), or just by copying it elsewhere from time to time.

### RSS

Remember [Google Reader](https://en.wikipedia.org/wiki/Google_Reader)? The same technology (RSS/Atom, invented by [someone driven to suicide to punish him for not believing in copyright enough](https://en.wikipedia.org/wiki/Aaron_Swartz)--in the same way now being done by every LLM corporation, which seems a bit on the nose even for 2026) still exists, and there are many tools (paid and free, cloud-hosted or self-hosted or desktop apps or mobile apps) to allow users to follow the feeds. Every new zine in Ishill will appear in your RSS feed, and any feed reader can find your RSS feed (technically an Atom feed, but it doesn't matter) given your site's URL. (It's `yoursite.place/index.xml`, FWIW.)

### Easy to Change Styles

Hugo makes it very easy to change anything about the theme; you add a file with the same name to your site's folder, copy the theme file in there, and then make any changes you want. If you only want to add CSS, put the file in `assets/css/` and add the filename to the `[params].customcss` array in your `config.toml`. If you only want to change the typeface or font, look at `assets/css/newtypeface.css` for how to do that (font files will go in `static/fonts`).

While you can make a local copy of the theme folder itself and edit the theme that way, I recommend you don't; if you do, it will be difficult to upgrade the base theme (and get any bug fixes) without losing your changes in the future.

## Types of Publications in Ishill

Why you care

How to alias them

### Monograph

### Leaflet

### Imprint

## How to Get Going as Quickly as Possible

This section of the zine is written for people who don't know how to use Hugo and don't feel like they want to learn much of it right now. You shouldn't really go straight into production this way as your first experiment, but it shows you how things work and lets you get a feel for the way a Hugo deployment works. You will need to enter commands on the command line, but we'll try to provide clear instructions for them (or give terms you can put in a search engine).

If you already know how to use Hugo and Git, great! Some of this will be pretty trivial, just grab the theme and check out the custom configuration options in `config.toml`. If you know Git, but don't know how to use Hugo, and you feel comfortable learning a new tech skill, check out the [Hugo Quick Start](https://gohugo.io/getting-started/quick-start/), except that you'll want to use `ishill` instead of `ananke`, and `https://codeberg.org/ussjoin/ishill.git` (or the same path at `github.com` or `gitlab.com`) instead of the similar `ananke` path. Good luck!

### 1. Set up Hugo

Go to <https://gohugo.io/installation/> and follow the installation instructions for your operating system. If you're on macOS, `brew install hugo` is what we use, with the Homebrew package manager (<https://brew.sh/>). You'll also want to run `brew install git`

If you're on Windows, XXX Explain that the scripts that turn blogs into zines need a Unix-y environment, but you can still use Ishill by cloning the site on one of the code providers and using their built-in editors and actions to build and host. It's not an ideal solution, but it will technically work!

### 2. Grab the example site repo

Use `git clone` for this, then `git submodule init` and a `pull` if it needs that (check?).

### 3. Change the Config

### 4. Build

TODO: Remember the setup script! Then the build script and hugo serve.

### 5. Add Content

You know how it works to make it build zines, and you've got some steps you can follow. Fantastic! Now explore the files and folders in the example site as you read the rest of this, and you can experiment from there.

There's no rush to deploy to a working website, but when you want to, the last part of this zine is called [Putting it on the Internet]().

## Putting it on the Internet

Things to think about first:
* Is everything changed? Contact information up to date? Configuration set?
* ...

## Deployment Options

Pros/cons of each

### NearlyFreeSpeech (or any Other Static Site Host)

See [Deployable Anywhere, Nothing External](#deployable-anywhere-nothing-external) above for what a static site host is.

TODO: Do it

### GitLab Pages

TODO: Push the repo to GitLab

Click Settings (on the left), then General. Scroll to "Visibility, project features, permissions" and click on it. Scroll down to "Pages," click "Only Project Members," and select "Everyone With Access." Scroll to the bottom of the section and click the blue "Save changes" button.

Now, click Deploy (on the left), then Pages. Then do the following:

1. Enter `node:lts` under "Select your build image."
2. Hit Next.
3. Next, Next, Commit.
4. Now GitLab has successfully overwritten the perfectly good build file the repository started with. This is suboptimal. Luckily, you have a fix! 
5. Click the name of your repository (it's likely just to the right of your name) near the top of your screen, so you see your files again.
6. Click `.gitlab-ci.yml`, which will almost certainly have a message next to it like "Update .gitlab-ci.yml."
7. Open <https://codeberg.org/ussjoin/ishill-examplesite/-/blob/main/.gitlab-ci.yml> in another browser tab. Select all the text that's in the file (in the monospaced typeface). Copy it (Ctrl-C, Command-C, etc.)
8. Back in your main browser, click the blue Edit button on the upper-right, then "Edit Single File."
9. Select all in the editor.
10. Paste what you copied from the other tab (Ctrl-V, Command-V, etc.).
11. Click the blue "Commit Changes" button, then in the popup, click the new blue "Commit Changes" button.
12. Click the name of your repository, just like you did in step 5.
13. On the left, click Deploy, then Pages.
14. Click "Domains & settings."
15. Uncheck the box that says "Use unique domain," then click "Save changes."
16. Now you'll have a URL in the box marked "Access pages." Your site will be there!
17. If the page looks weird (e.g., unformatted), run a new build job. (This is a one-time issue when the URL to your site changes, but you wanted to do that to get rid of the "unique" domain.)
  1. Click Build, then Pipelines.
  2. Click the blue "New pipeline" button.
  3. Click the (new) blue "New pipeline" button. You don't need to enter anything on that page.
  4. When the build completes, check the site again.

### GitHub Pages

TODO: Push the repo to GitHub

1. Click Settings, then Pages (on the left). 
2. Under Branch, where it says "GitHub Pages is currently disabled," click None, then select `main`. 
3. Click Save. 
4. Under Source, click "Deploy from a Branch," then select "GitHub Actions." 
5. Then you'll need to trigger a new build. Click Actions, then click "Build and Deploy an Ishill Site to GHP" on the left. 
6. Click "Run workflow," then the green "Run workflow" button. 

### Codeberg Pages

TODO: Push the repo to Codeberg

TODO: Migrate the current Codeberg deployment to the new cute webhook thing, unless we can't with the zipping and zines (likely). In which case, document the current setup.

## Parting Notes

Send me an email at <ishill@ussjoin.com> if you use this; I'm always looking for good things to read, and maybe I'll add you to a directory in the theme repository, so people can see what it looks like. Also, keep an eye occasionally on the theme repository, because I may release bugfixes or new features from time to time. (No guarantees, but hey.) If you have suggested features, please feel free to submit them as issues at <https://codeberg.org/ussjoin/ishill>.

