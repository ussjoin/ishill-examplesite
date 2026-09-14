+++
draft = false
title = "What's Ishill? Why Ishill? How Ishill?"
weight = 20

[params]
  author = "Brendan Francis O'Connor"
  author_url = 'https://ussjoin.com'
  original_url = 'https://gitlab.com/ussjoin/ishill'
  original_date = '2025-05-30'
+++

Hello ideally-human person! You've probably found this at [Codeberg](https://codeberg.org/ussjoin/ishill) or [GitLab](https://gitlab.com/ussjoin/ishill) or [GitHub](https://github.com/ussjoin/ishill), or possibly on a bench somewhere in meatspace. Read on to learn what you've found!

**Note: this monograph is always going to be incomplete, because the set of all things one can do with software is vast.** We hope it's useful to you even as-is. You're welcome to reach out for further assistance using the Issues function on [Codeberg](https://codeberg.org/ussjoin/ishill/issues), and I'll do my best to aid you (and add the things that confused you to this document so that they can help others!).

## The Pitch (Human)

**Want to write/make zines** but don't have Illustrator or InDesign, and aren't a good enough artist to do twenty pages of lettering by hand? Want to use a computer to make longer content than the (lovely, if short) [minizine](https://www.icaboston.org/articles/make-your-own-mini-zine/) format? Optionally, want to simultaneously publish to print and the web, so that people who come across one of your zines can find more?

Ishill is for you. It's a zine publishing toolkit built on top of a blog toolkit ([Hugo](https://gohugo.io/)) that lets you quickly create for web, PDF, and zine. If you want to, you can use it to publish your content _for free_ on the Internet, on a site only you control (no Facebook/Instagram/etc. nonsense), and with no lock-in; you can move it anywhere at a moment's notice. You can use a domain name you own, or use a free subdomain of either of two gigantic code providers (GitLab and GitHub) (or a reasonably-sized nonprofit code provider, Codeberg, which offers the same functionality), and use their computer time and web servers to distribute your content to the world. You can also host it on any web host that can host static sites, which is... pretty much all of them, for either free or nearly no money. You can also publish it on [Tor](https://www.torproject.org/), or even keep it offline and just use it as a fast Markdown-to-PDF pipeline.

Hugo is a "static site generator," so while it takes a teensy bit of tech knowledge to get it set up (we'll help you! That's what this zine is), you don't need to worry about securing it or getting hacked; most hosts for static sites don't let you configure anything that could get you in trouble, which is just how you should like it.

Sound good? Read on.

## The Pitch (if you spend a lot of time working with tech)

Ishill is a zine publishing stack built on top of [Hugo](https://gohugo.io/), the static site generator, with some add-on tools to do Markdown-to-zine efficiently. It has "happy path" deployments to [CodeBerg Pages](https://docs.codeberg.org/codeberg-pages/), [GitLab Pages](https://docs.gitlab.com/user/project/pages/) (using GitLab CI/CD), and [GitHub Pages](https://pages.github.com/) (using GitHub Actions), but since it's basically Hugo plus a couple of shell scripts, you can run it anywhere with a modicum of tech knowledge. If you need a full tech stack:

* [Hugo](https://gohugo.io/) for core Markdown-to-HTML rendering
* [Weasyprint](https://weasyprint.org/) for HTML/CSS-to-PDF rendering
* [PDFImpose](https://framagit.org/spalax/pdfimpose) for imposition (arranging the order of pages so you can print them double-sided and fold them into a zine)
* [Some Shell Scripts](https://xkcd.com/1319/) to tie it together.

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

## Types of Publications in Ishill

Why you care

How to alias them

### Monograph

### Leaflet

### Imprint

## Other Neat Features

### Self-Archiving

Why this is good. Also, how to turn it off if you don't want it for whatever reason.

### Deployable anywhere, nothing external

Static site hosts

Other deployment options: USB drive, radio broadcast, whatever. It doesn't need the Internet. That might be useful sooner rather than later.

### How to Change Styles

Critical to note: override, don't change the theme, or you'll be stuck later if you want to upgrade.

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
7. Open <https://gitlab.com/ussjoin/ishill-examplesite/-/blob/main/.gitlab-ci.yml> in another browser tab. Select all the text that's in the file (in the monospaced typeface). Copy it (Ctrl-C, Command-C, etc.)
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

## Why Ishill?

Who was Ishill
Why he mattered
Woodcut of him
Pronounciation


