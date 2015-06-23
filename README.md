# hubot-fb-debugger

[![NPM](https://nodei.co/npm/hubot-fb-debugger.png)](https://nodei.co/npm/hubot-fb-debugger/)

A hubot script that does the `Facebook Debugger` and show `Facebook link stat`

See [`src/fb-debugger.coffee`](src/fb-debugger.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install hubot-fb-debugger --save`

Then add **hubot-fb-debugger** to your `external-scripts.json`:

```json
["hubot-fb-debugger"]
```

## Sample Interaction

###Update URL Time Scraped

```
fb_urldebug|fud <URL>
```

####Sample

```
user1>> fb_urldebug http://jiunjiun.logdown.com/
hubot>> https://developers.facebook.com/tools/debug/og/object?q=http://jiunjiun.logdown.com/
```
---
###Show Facebook link stat

```
fb_link_stat|fls <URL>
```
####Sample

```
user1>> fb_link_stat http://www.storm.mg/lifestyle/51669
hubot>> http://www.storm.mg/lifestyle/51669
┌────────────────────┬────────────────────────────────────────────────────────────┐
│ name               │ value                                                      │
├────────────────────┼────────────────────────────────────────────────────────────┤
│ url                │ http://www.storm.mg/lifestyle/51669                        │
├────────────────────┼────────────────────────────────────────────────────────────┤
│ normalized_url     │ http://www.storm.mg/lifestyle/51669                        │
├────────────────────┼────────────────────────────────────────────────────────────┤
│ share_count        │ 30                                                         │
├────────────────────┼────────────────────────────────────────────────────────────┤
│ like_count         │ 196                                                        │
├────────────────────┼────────────────────────────────────────────────────────────┤
│ comment_count      │ 5                                                          │
├────────────────────┼────────────────────────────────────────────────────────────┤
│ total_count        │ 231                                                        │
├────────────────────┼────────────────────────────────────────────────────────────┤
│ commentsbox_count  │ 0                                                          │
├────────────────────┼────────────────────────────────────────────────────────────┤
│ comments_fbid      │ 922842614449918                                            │
├────────────────────┼────────────────────────────────────────────────────────────┤
│ click_count        │ 0                                                          │
└────────────────────┴────────────────────────────────────────────────────────────┘
```

---

## Copyright / License
* Copyright (c) 2015 jiunjiun (quietmes At gmail.com) 
* Licensed under MIT licenses.
