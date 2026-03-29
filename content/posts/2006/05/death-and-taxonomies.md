---
title: "Death and Taxonomies"
date: 2006-05-31T21:41:42
draft: false
slug: "death-and-taxonomies"
url: "/2006/05/31/death-and-taxonomies/"
categories:
  - "plone"
tags: []
---

*Originally published on theploneblog.org*
**A forray into drupal 4.7's taxonomy system and what Plone can learn from it.**
I have been moonlighting on a Drupal project and paying close attention to their taxonomy system. Drupal's taxonomy/category/tagging system was completely revamped for their 4.6->4.7 release - a release close to a full year in the making, analogous to the Plone 2.0->2.1 "minor" point release.
The site I have been working on, [theicarusproject.net](http://www.theicarusproject.net)
has a very rich collection of content, and one of the primary motivations for the migration is to get a better handle on the classification system - noboday can find anything on the current site. They were committed to Drupal long before I arrived, so I dug in with the hope of learning something from the contrast.
PHP bashing aside, there are alot of interesting things happening in Drupal land. I hope to follow up this post with a few more cross-pollinating nuggets, but for now I will focus on their taxonomy system.
Taxonomies in Drupal are considered the heart of the system, and the essential modules ship with the core and cannot be disabled. Most URLs in Drupal are effectively queries, much like our smart folders (actually, for anything aside from anti-chronological display order you need to install the [Views module](http://drupal.org/project/views)) but the display results are all instances of content with matching vocabulary terms. The absence of folders and containment initially confuses many administrators, and renders breadcrumbs largely useless, but does allow for the creation of sophisticated information architectures.
Taxonomies are managed top-down, not bottom-up, and have a separate administrative interface for their creation and management. Once the taxonomy vocabularies are created, specific terms can be added to these vocabularies without having to create content associated with those terms (in contrast to a bottom-up category system, like the mediawiki).
Category Management - Vocabulary Listings:
![vocabulary_listing](/images/2006/05/vocabulary_listing-300x167.jpg "vocabulary_listing")
Druapl supports multiple vocabularies, which can each be associated with one or more content types. Vocabularies can be flat, one level deep, or N-levels deep (hierarchical). They can be fixed or free form (meaning content authors can make up new categories upon content creation). The core tagging system does not support the creation of tags per-user, per-object - only per-object.
Category Management - Add a Vocab:
![add_vocabulary](/images/2006/05/add_vocabulary-300x242.jpg "add_vocabulary")
Category Management - Add/Edit a Term:
![edit_term](/images/2006/05/edit_term-300x242.jpg "edit_term")
The Drupal taxonomy system is very powerful, but its power is very open ended and does not necessarily lead users towards a uniform experience. The confusion around categories and taxonomies is best exemplified by the [category module](http://category.greenash.net.au/) meant to consolidate and simplify taxonomy and navigation, but there is no consensus on its incorporation into the core.
A large number of modules are built around taxonomies. Core Drupal supports roles, but no groups ([organic groups](http://drupal.org/project/og) is a popular access delegatoin solution, but it is incompatible with other access restriction modules - so you have to choose one), and does not have a notion of containment (ie folders). So, for example, one way to restrict editing access is by enabling the [taxonomy access](http://drupal.org/project/taxonomy_access) module. Another useful module is the [taxonomy browser](http://drupal.org/project/taxonomy_browser) which allows for advanced search against unions/intersections of vocab terms.
Category Browser:
![category_browser](/images/2006/05/category_browser-300x246.jpg "category_browser")
Once vocabularies are created, and terms added, content can be associated with these terms:
![content_creation](/images/2006/05/content_creation-300x246.jpg "content_creation")
Working on this site really drove home the value in separating the navigation axis (section) from the thematic axis (keywords), and separating these dimensions was easy to accomplish with the taxonomy/category tools built into drupal. In particular, once the scheme was developed, managing vocabulary lists (even hierarchical ones) is intuitive, albeit slightly clunky. I further chose to introduce a free-form tagging dimension for member contributed posts which may or may not fit into the fixed taxonomy. This is similar to myspace and facebook allowing for free-form hobbies and interests, and banking on a large enough user base that there will be overlap and potentially interesting intersections.
![section_vocab](/images/2006/05/section_vocab-300x242.jpg "section_vocab")
![keywords_listing](/images/2006/05/keywords_listing-300x246.jpg "keywords_listing")
The system still does not allow for the intuitive modeling of a many-to-many relationship, which I continue to think is the litmus test which will mark of a truly powerful taxonomy UI. There is still quite a bit of programmer know how involved in setting up this system so that it operates the way that content administrators expect, and arguably there are too many degrees of freedom introduced by such a general purpose modeling capability (if you think about it, a tagging system can essentially allow web administrators to model relationships which used to require programming custom applications against an rdbms).
Nonetheless, Drupal's taxonomy/category/vocabulary system definitely captures a few use cases more elegantly than Plone's current core does. But perhaps the real lesson is the importance of not mixing navigation space and content space, which can be kept separate in Plone, but is all too easy to conflate (in Drupal too!).
Note: most things I describe in this case study could have been accomplished within core Plone - I think the most interesting things here are the administrative UI for multiple vocabulary management, the different types of vocabularies, and how central they are in the construction of a Drupal site.
