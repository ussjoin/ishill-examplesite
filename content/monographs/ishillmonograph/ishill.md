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

Hello ideally-human person! You've probably found this at [GitLab](https://gitlab.com/ussjoin/ishill) or [GitHub](https://github.com/ussjoin/ishill), or possibly on a bench somewhere in meatspace. Read on to learn what you've found!

## The Pitch (Human)

Want to write/make zines but don't have Illustrator or InDesign, and aren't a good enough artist to do twenty pages of lettering by hand? Want to use a computer to make longer content than the (lovely, if short) [minizine](https://www.icaboston.org/articles/make-your-own-mini-zine/) format? Optionally, want to simultaneously publish to print and the web, so that people who come across one of your zines can find more?

Ishill is for you. It's a zine publishing toolkit built on top of a blog toolkit ([Hugo](https://gohugo.io/)) that lets you quickly create for web, PDF, and zine. If you want to, you can use it to publish your content _for free_ on the Internet, on a site only you control (no Facebook/Instagram/etc. nonsense), and with no lock-in; you can move it anywhere at a moment's notice. You can use a domain name you own, or use a free subdomain of either of two gigantic code providers (GitLab and GitHub), and use their computer time and web servers to distribute your content to the world. You can also host it on any web host that can host static sites, which is... pretty much all of them, for either free or nearly no money. You can also publish it on [Tor](https://www.torproject.org/), or even keep it offline and just use it as a fast Markdown-to-Zine pipeline.

Hugo is a "static site generator," so while it takes a teensy bit of tech knowledge to get it set up (we'll help you! That's what this zine is), you don't need to worry about securing it or getting hacked; most hosts for static sites don't let you configure anything that could get you in trouble, which is just how you should like it.

Sound good? Read on.

## The Pitch (If you work in tech)

Ishill is a zine publishing stack built on top of [Hugo](https://gohugo.io/), the static site generator, with some add-on tools to do Markdown-to-zine efficiently. It has "happy path" deployments to both [GitLab Pages](https://docs.gitlab.com/user/project/pages/) (using GitLab CI/CD) and [GitHub Pages](https://pages.github.com/) (using GitHub Actions), but since it's basically Hugo plus a couple of shell scripts, you can run it anywhere with a modicum of tech knowledge. If you need a full tech stack:

* [Hugo](https://gohugo.io/) for core Markdown-to-HTML rendering
* [Vivliostyle](https://vivliostyle.org/) for HTML/CSS-to-PDF rendering
* [PDFImpose](https://framagit.org/spalax/pdfimpose) for imposition (arranging the order of pages so you can print them double-sided and fold them into a zine)
* [Some Shell Scripts](https://xkcd.com/1319/) to tie it together.

## How To

This section of the zine is written for people who don't know how to use Hugo and don't feel like they want to learn much of it right now. 

If you already know how to use Hugo, great! If you don't know how to use Hugo, but you feel comfortable learning a new tech skill, check out the [Hugo Quick Start](https://gohugo.io/getting-started/quick-start/), except that you'll want to use `ishill` instead of `ananke`, and `https://gitlab.com/ussjoin/ishill.git` (or the same path at `github.com`) instead of the similar `ananke` path. Good luck!

### 1. Clone the repo

### 2. Set up Hugo

### 3. Change the Config

### 4. Add Content

### 5. Publish (GitLab)

Click Settings (on the left), then General. Scroll to "Visibility, project features, permissions" and click on it. Scroll down to "Pages," click "Only Project Members," and select "Everyone With Access." Scroll to the bottom of the section and click the blue "Save changes" button.

Now, click Deploy (on the left), then Pages. Then do the following:

1. Enter "node:lts" under "Select your build image."
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

### 5. Publish (GitHub)

1. Click Settings, then Pages (on the left). 
2. Under Branch, where it says "GitHub Pages is currently disabled," click None, then select `main`. 
3. Click Save. 
4. Under Source, click "Deploy from a Branch," then select "GitHub Actions." 
5. Then you'll need to trigger a new build. Click Actions, then click "Build and Deploy an Ishill Site to GHP" on the left. 
6. Click "Run workflow," then the green "Run workflow" button. 

## More Coming Soon

In the next while, I will expand this monograph into a complete guide to using Ishill even if you're new to GitHub and/or GitLab. For now, if you've used a Hugo theme before, you use it like that, and the information in the `.gitlab-ci.yml` or `.github/workflows/buildexamplesite.yml` files will help you learn how to build zines for online reading and offline printing using this stack.

If you need help, open an issue on GitHub or GitLab, and I'll see it. If you want to add features, open an MR on GitLab or a PR on GitHub, and I'll see it as well, though I'm doing development on a separate server so it won't "look" like I've accepted your code for a bit.

