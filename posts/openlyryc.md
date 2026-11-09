# OpenLyryc: A Fully Fledged Workstation In Your Browser

OpenLyryc started as a little side project for myself. 

I wanted a decent way to create and edit synchronized lyrics without having to install desktop software or jump between several different tools. 

I wasn't planning to build a whole platform around it. 

But anyway, I kept expanding its functionality.

What started as a simple lyrics editor gradually turned into a much bigger project, with word-level synchronization, audio tools, multiple export formats, live-karoke, and quite a few other features. 

Eventually, I decided it was worth making the whole thing available to everyone.
Today, OpenLyryc, a lyrics and karaoke workstation, and it's currently in public testing.

There are plans to making it open source soon.

## Why Another Lyrics Editor?

Working with synchronized lyrics isn't always as straightforward as it should be. 

Finding lyrics is one thing, but editing their timing, matching individual words to audio, and exporting everything in a format that other applications can understand is a different story.

I wanted to bring these things together instead of having to use separate applications for each part of the process.

OpenLyryc is quite simple. Open it in a browser, load your audio, find or write your lyrics, synchronize them, and export the result. No complicated setup or desktop installation required.

## What Can You Do With It?

As I worked on the project, I started adding features that I either needed myself or thought would be useful to other people working with lyrics.

Some of the main features include:

- **Word-level synchronization:** Match individual words to the audio using keyboard shortcuts and real-time playback. You can also adjust timestamps in super small increments when something needs precise correcting.
- **Audio waveform:** View the audio waveform while editing, making it easier to navigate tracks and find the right points for synchronization.
- **LRCLIB integration:** Search for existing community-submitted lyrics and bring them directly into the editor. You don't always have to start from an empty page.
- **Multiple export formats:** Import and export standard LRC, Enhanced LRC, and Apple's TTML format, making it easier to use your work with different applications.
- **Live Karoke/Preview:** Display synchronized lyrics in a clean, full-screen interface with adjustable text and smooth scrolling. It's super useful for singers, stage performances, or perhaps Karoke at home!

I didn't want OpenLyryc to be useful for just one particular workflow. Someone creating karaoke lyrics, someone correcting timestamps, and someone preparing lyrics for a performance should all be able to find something useful in it, at one place. It helps all.

## A Bit of the Tech Stuff

Since I wanted the entire experience to run in a browser, I tried to keep the actual editing process on the user's device. Audio files and custom lyrics are processed locally rather than being uploaded to a server just to use the editor, that a win-win for both OpenLyryc's users and me.

The Web Audio API handles audio playback and timing. 

OpenLyryc is reverse compatible with whatever major lyrics formats you drop into it and what it exports.

Well, supporting different formats was an interesting part of the project. A regular LRC file stores timestamps for entire lines, while Enhanced LRC can store timing information for individual words. TTML has its own structure and supports richer timed-text information. 

Getting these formats to work together without unnecessarily losing information took some sweet time.

There are also plenty of smaller things that don't necessarily deserve their own section: keyboard shortcuts, playback speed controls, timing adjustments, scrubbing, and all the little interface improvements that make the editor easier to use.

## Stage/Live Karoke Mode

One feature I particularly wanted to include was a dedicated stage mode.

The idea is to take the lyrics out of the editing environment and display them on their own. No timelines, editing panels, or unnecessary controls. Just the lyrics, with the current line highlighted and the next lines appearing as playback progresses.

It makes OpenLyryc useful beyond creating and editing lyrics. 

You can also use it to follow lyrics while practising, rehearsing, or performing professionally.

## What's Next?

OpenLyryc is quite stable now. That said, it still remains in development and is being improved with each new update.

A public API in planning.

Full public release is expected next year (2027).

## Where It Stands Today

Honestly, OpenLyryc has become considerably bigger than the little tool I originally set out to make. What started as something I wanted for myself is now a complete suite that I'm making available to other people.

Partnered up with lrc.red, lrclib and Better Lyrics  as data and services providers.

It's been a fun project to work on, and a good opportunity to experiment with web technologies, solve problems I hadn't encountered before, and build something I couldn't find elsewhere.

OpenLyryc is open-source, free to use, and currently in public testing. If you work with synchronized lyrics, create karaoke tracks, or are simply curious about the project, do give it a try!

- **Live project link:** [Testing server](https://openlyryc.pages.dev/studio)
- **Source code:** [Coming soon]