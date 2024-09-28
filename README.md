# StarTrack

A library for tracking user interactions with programming tools in Squeak/Smalltalk.

Beware that, if you install this, central methods of programming tools will be modified.

## Installation

## How to install
1. Get [Squeak 6.0 or later](http://www.squeak.org)
2. Load [Metacello](https://github.com/metacello/metacello)
3. Finally, load StarTrack with the following command:

```Smalltalk
Metacello new
  baseline: 'StarTrack';
  repository: 'github://hpi-swa-lab/StarTrack/packages';
  load.
```

## Entry Points

1. Start a server: Execute `STServer startServer`
2. Change whether events are stored locally or remote: Browse `STTracker class>>#isStoringEventsLocally`
3. Change upload parameters: Browse `constants` category of `STTracker class`
4. Explore the upload process: Browse `STTracker class>>#ensureScheduledTask`
