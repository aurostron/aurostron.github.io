# Building hoGAMEGATA: Preserving Thousands of Horror Games

*Published on October 24, 2026 • 6 min read • by aurostron*

---

Collecting data, organizing it, cleaning it up, and actually building the UI turned out to be a much bigger task than I initially expected.

It started pretty simply. I was browsing Steam, looking for horror games, which I usually play these days, and kept running into the same problems. Games were being tagged as horror when they really weren't, genuinely interesting titles were difficult to find, and discovering something new meant jumping between Steam, YouTube, Google, Metacritic, Twitter, forums, and several other websites.

I kept thinking- Why isn't there just one place for all of this?

That was pretty much how **hoGAMEGATA** started, when I was 17.

## The Shower Thought

Like a lot of my projects, hoGAMEGATA started with a small idea and a bit of frustration.

I wanted a dedicated place for horror games. Not just the popular ones, but obscure indie releases, older titles, forgotten projects, and games that don't get much attention anymore.

Tagging and discovery systems on major stores like Steam and itch.io weren't particularly helpful for this. Finding something genuinely interesting often meant digging through a lot of unwanted stuff. 

Keeping track of games across different platforms was another problem altogether.

I didn't want to build another gaming website filled with advertisements, unnecessary tracking and account requirements, that's slow and unpractical.

I wanted something straightforward:

- **Search and discovery:** Find horror games without having to fight through.
- **Proper filters:** Sort by release date, genre, platform, price, and minute details.
- **No unnecessary restrictions:** No ads, no paywalled features, and no account required just to browse.
- **Game tracking:** Keep track of games you're interested in, playing, or have already finished.
- **Developer attention:** Give smaller developers and their games a proper place to be discovered.

Even the name took me a while!

**hoGAMEGATA** is a combination of a few things. 

The *ho* stands for horror, and *GAME* is, well, video games. But if you look closely at GAMEGATA, you'll notice **MEGA** right in the middle. That represents the scale I had in mind for the project. And the ending, **ATA**, comes from METADATA, with the D removed for the effect.

So, essentially: Horror Games Mega Metadata.

I also wanted the website to feel fast and easy to use. It should be something you can open, search through, find what you're looking for, and leave without having to deal with a dozen distractions.

## Scaling to 100K+ Games & 68K+ Developers

What started as a personal project eventually grew into something considerably larger.

By the time of writing, hoGAMEGATA had indexed over **107,000 game titles and 68,000 developers**. There's also a huge collection of screenshots, thousands of tags, and plenty of other metadata connecting everything together.

Getting there wasn't simply a matter of collecting a bunch of game names and putting them on a website.

Game information comes from different platforms and sources, and keeping everything organized is a challenge of its own. Names, descriptions, release dates, developers, platforms, genres, and other details all need to be handled properly. There are duplicates, missing information, inconsistent naming, and plenty of little things that need fixing.

I spent a considerable amount of time working on the database, importing information, organizing relationships, and making sure users could actually do something useful with all that data. 

A few of the technical decisions behind the project:

**1. Astro:** I wanted the website to be lightweight and fast. Astro helped keep pages relatively simple without shipping unnecessary JavaScript everywhere.

**2. Cloudflare Workers:** These handle much of the server-side work and let the project run on Cloudflare's infrastructure without maintaining a traditional server.

**3. Turso (libSQL) & Drizzle ORM:** I needed a database setup that was affordable and suitable for a project with a fairly large catalogue. Turso and Drizzle became part of that setup.

**4. Search and filtering:** Searching through a catalogue this large needs to feel responsive. I worked on making search and filtering practical rather than forcing users to constantly load new pages just to narrow down their results.

The currrent stack is scalable and optimized enough to handle a lot fo traffic.

The goal throughout was to keep the project affordable to operate while still making it useful for people regardless of where they're accessing it from.

Of course, not everything has gone smoothly. Managing a growing database, keeping information consistent, and dealing with infrastructure limitations have all been learning experiences, since hoGAMEGATA runs on minimal infrastructure.

## Why Horror Needs Preservation

This is probably one of the bigger reasons I wanted to build hoGAMEGATA in the first place.

Horror games have a pretty interesting history. Some of the most memorable experiences aren't necessarily big-budget releases. They're small indie projects, experimental games, and amazing little projects that you might stumble upon once and never hear about again.

A lot of these games don't have much visibility outside their original communities.

Sometimes their websites disappear, developers move on, download links stop working, or the games simply get buried under newer releases.

I'm not saying hoGAMEGATA can preserve every game itself. It doesn't host game files or downloads. It's a catalogue and discovery platform.

But I do think keeping information about these games organized and accessible is important. Even if someone can't play a particular game anymore, being able to find its name, developer, release information, screenshots, and history is still valuable.

All the data is quadruple backed up.
One, the production database. Two, on a public Github repository named "project-hgg". Three, on a HuggingFace dataset. Lastly, on my own home server.

> "Interesting horror games shouldn't become impossible to find just because nobody remembers where to look."

## Building It Alongside School
hoGAMEGATA is a solo project, and keeping a database of this size running isn't exactly a small task, as said earlier.

There are weeks when schoolwork takes priority, and progress slows down as I don't have a full-time developer team behind this. Just a lot of curiosity and joy of building stuff ended in what you see today :)

## The Pending Space
Indexing every itch.io upload quickly filled the catalog with protoypes, broken uploads and test projects, burying genuine indie horror games. Instead of deleting these listings, I created the Pending Space: a separate place for unrated and unverified projects.

Today, over 49,000 games are in the Active Catalog, while another 69,000+ are preserved in the Pending Space. Games can graduate automatically after receiving at least five genuine player ratings, or through a manual developer review, bypassing the fully automated bot process.


The goal isn't to judge games by popularity. It's to keep discovery useful without throwing away obscure projects. Developers can also request updates or removal at any time.

## What's Next?

hoGAMEGATA is still a work in progress. There's a lot I'd like to improve, and honestly, the current version is nowhere near everything I originally imagined.

Some things I'm still working on:

- **Better metadata quality:** Improve how game information is checked, corrected, and updated.
- **Developer contributions:** Make it easier for indie developers to suggest corrections, add missing information, and improve their own game pages.
- **Community involvement:** Give users a better way to contribute information and help maintain the catalogue.
- **Game tracking and integrations:** Explore integrations with popular backlog trackers and launchers so users can keep their libraries and play history connected.
- **More discovery features:** Better ways to find obscure games, explore subgenres, and discover titles you probably wouldn't encounter otherwise.
- **Better access to the data:** Explore ways to make hoGAMEGATA's metadata more useful to other developers and projects that might want to work with horror game information.

I'm also interested in making the project more community-driven over time. A catalogue this large shouldn't have to depend on just one person to keep everything updated.

For now, I'm just happy that a random idea has grown into something people can actually use.

If you're interested in horror games or just want to find something new to play, feel free to take a look. 

As matter of fact, even if you played one game from hoGAMEGATA each day, you'll still be unable to complete playing all of them in your lifetime!

**Explore hoGAMEGATA:** [gamegata.xyz](https://gamegata.xyz)

GGs, 
aurostron