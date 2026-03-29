---
title: "New York State of Plone"
date: 2006-07-13T22:01:45
draft: false
slug: "new-york-state-of-plone"
url: "/2006/07/13/new-york-state-of-plone/"
categories:
  - "plone"
tags: []
---

![](http://static.flickr.com/73/182509294_2b1387e602.jpg?v=0)
*Originally published on theploneblog.org*
**Preliminary report on the Big Apple Sprint**
July fourth has come and gone, but the fireworks set off at [last week's sprint](http://plone.org/events/sprints/bigapple/big-apple-sprint-details/) are still visible.
The sprinters arrived at Columbia University bright and early, Wednesday morning. (note to all future sprint organizers: tell the caterers to skip the decaf and double the regular order). About ~13-15 sprinters were present, but we also coordinated remote sprints with Austria (+5 hours ahead) and Utah (-2 hours behind) meaning we were basically sprinting around the clock.
We all used the freely available, plone-based, [OpenPlans](http://www.openplans.org/projects/big-apple-plone-sprint) service to manage our collaboration and everyone found the software to be extremely reliable and easy to use.
The sprint began with introductions and detailed demos of the tools and
products people had been working on and were most proud of. Sprints are
difficult to plan in advance since the skills and interests of the
attendees are not decided until the final roster shows up. A diverse
range of interests were represented, but common themes rapidly emerged
- most of us were working at or with non-profits, building community sites with educational goals,
and we all had a very strong interest in participatory media (in contradistinction to mass broadcast media). It became
apparent that although we were all working on different problems, very similiar features and tools could be part of our solutions.
The sprinters self-organized into 3 teams (+ 1 remote team):
**Multimedia** - focusing on improving the handling of multimedia
content w/in Plone. Topics included transparent management of multiple
media formats, improving the quicktime player, abstracting the common controls from the different media player formats, merging Austria's
ATVideo bittorrent branch, allowing for remote resources to be managed by the
media types, and the integration of CCNMTL's video clipping tool into
[PloneMultimedia](http://dev.plone.org/collective/browser/PloneMultimediaBundle). Thanks to Nate, Gary, Anna, Kurt, and Sky for making this group a productive success.
Discussions emerged around the hybridization of modern media formats.
Is an audio track with synchronized gifs a piece of audio or video media? Modern events are now distributed in multiple media
formats (e.g. podcasts and vodcasts) - might PloneMultimedia benefit from a
UI analogous to PloneLingua? What about metadata embedded directly in
the binary file? Should it be editable ttw? Which file is the
canonical file and which are the derivatives? Whatsoever will we all do about large file support?!?
A new 'media' container was introduced to PloneMultimedia allow for the mgmt of media that spans multiple traditional formats.
**Annotations/Tagging** - laying out the jigsaw puzzle that tagging,
rdf, taxonomies, folksonomies, and sticky notes, and [microapps](http://microapps.org/) have become in the hopes of
consolidating on a common strategy to move forward. The [Yucca](http://openplans.org/projects/yucca) project was born
after we all began to realize how many of our problems would naturally fall into place with a robust engine which supports user contributed content annotations.
Also, work was done by Anders and Chad on the [sticky notes product](http://plone.org/products/stickies) with the aim of
factoring out the notes so they could be used outside of plone too
(with the persistence abstracted, so that it could be backed by a
microapp - like [pita](http://thraxil.org/users/anders/posts/2006/03/08/tasty-lightning/), or even stored [client side](http://codinginparadise.org/projects/storage/README.html#articles)), as well as improving the
editability of the notes - they now support "double-click to edit".
Great job!
**Blogging/Syndication** - This group (Rob and Kurt) was primarily working on polishing quills so that it provides a smooth user experience.
Progress continues and Quills is looking like a serious contender.
**Content Licensing -** see Nate's post on [conetent licensing in plone](http://nateaune.com/2006/07/13/content-licensing-in-plone/). This work was conducted primiarly by the group working in Utah, out of [C()SL](http://cosl.usu.edu/).
In case its not obvious, there was a great deal of overlap between the interests of the groups. For example, the multimedia team was also very interested in tagging, syndication ((p/v)odcasts), and licensing. Although it initially seemed challenging to tease the participants apart, the groups self organized quite organically.
Some time early in the sprint, Rob treated us all to an impromptu tutorial on z3 annotations and continued to support the various groups in their attemps to absorb the new world order. By the end of the day, 3 seperate pairs of developers had the [contentratings product](http://dev.plone.org/collective/browser/contentratings/trunk) installed and running, demonstrating how important it is for there to be good examples representing best practices in the collective - these practices spread virally. Whit actually spent a chunk of time with Christof and Darian thinking about a good packaging system for keeping the z2 and z3 layers as thin as possible. They also spent time backporting the tagger product from zope 2.10 to  2.9.
Throughout the sprint curious academics wandered through in an attempt to catch the rare glimpse of a geek working in the wild.
Ian Bicking also stopped by to check in with his [new coworkers](http://blog.ianbicking.org/new-job-open-plans.html).
Since 3 days of sprinting is never enough, sprinting actually continued over the weekend at the openplans offices with a reduced number of hardcore plonistas. Christoff was gracious enough to invite us into his home for a home cooked meal.
If anyone has anything else to add to this report, please do - sorry I missed it.
The sprint was very productive, educational, and great fun as well.
Beyond the technical achievements, relationships were forged that we
expect to flourish in the months to come. I think we all witnessed
tremendous convergence across our organizational requirements, and are
also convinced that the tools we are working on will be in great demand
once the corporate world figures out how useful these technologies can
be.
Throughout the sprint participants shared tips and tricks,
demonstrating how important live, in-person communication remains, even
in the Google Age. This was especially apparent when the nyc sprinters
attempted to convey proceedings to the remote sprinters and we felt the
limitations of geographic displacement.
Sky [got married](http://flickr.com/photos/thraxil/186710629/in/set-72157594194853535/) on Sunday in a park on the Hudson river. His last days as a
bachelor were devoted to this Sprint, and we all wish him and his new
wife a happy and healthy (Plone-free) honeymoon.

### Pictures

["bigapplesprint" on flickr.com](http://www.flickr.com/photos/tags/bigapplesprint/ )
And, since Anders is [so special](http://thraxil.org/users/anders/posts/2005/11/27/what-is-a-photo/version/1121/), [here](http://www.flickr.com/photos/thraxil/sets/72157594188306560/) is his set:
Special thanks to our hosts, [Columbia's Center for New Media Teaching and Learning](http://ccnmtl.columbia.edu) for sponsoring the sprint and making us all feel at home in New York City.
![](http://static.flickr.com/18/23882882_5a3d41d4f3.jpg?v=0)
