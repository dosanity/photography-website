# Photography Portfolio Website
This is a simple website using [Bootstrap 4][bootstrap-home] ruby gem for Ruby on Rails (Sprockets) application for static content that includes personal information, a blog, a photography portfolio, and related news to key terms from Twitter. It was created as the basis for my own website, but everyone is welcome to use it. The implementation strives to be simple and free of unnecessary dependencies.

## Overview
-An easy way to create a simple, secure website with a blog
-Support for text-based and photo-based blog formats
-Easy authoring in HTML, Markdown (with code formatting, or JSON
-Ability to create posts that never show up in the timeline
-Simple post format that separates content and metadata
-Access to changing portfolio images
-High resolution support for photo images
-Support for archive links and tagging posts & images by category
-Ability to develop a master log in to develop website
-Allow access to top news from Twitter on select topics
-Ability to format different buttons and headings
-Quick access to other pages using drop down menu

## Structure
-`app` Entry point for the application, configures the server and static content
-`/app/views/blogs` Implementation of the blog, admin actions, and styles
-`/app/views/comments` Implementation of comments features on blogs
-`/app/views/pages` Page layout codes for contact information, home, about, and Twitter news sources
-`/app/views/portolios` Implementation of photography portfolio, archives, and tags
-`/app/controllers/blogs_controllers.rb` Blog layout code
-`/app/controllers/comment_controllers.rb` Comment layout code
-`/app/controllers/pages_controllers.rb` Home, about, contact, and Twitter news sources layout code
-`/app/controllers/portfolio_controllers.rb` Portfolio layout code with sample image
-`/app/controllers/topics_controllers.rb` Blog topics controller layout code

