# Sassy Contour

A basic skeleton for mostly static websites that make use of Haml, Sass/Scss, and CoffeeScript. Bootstrap is included as an example of how to add additional asset libraries, but is not required and can be removed.

This should be simple to use and is intended for designers to quickly create, style and share their mocks. Haml adds a little dynamic feel to the pages that isn't there on the usual static html pages.

## Usage

You'll need a proper Ruby environment to run this application (preferrably 2.3.3). For Coffeescript, you'll need a Javascript runtime--nodejs is recommended, although therubyracer will also work (uncomment the gem line in Gemfile).

1. Fork the repository, rename as necessary.
2. Clone your new repo (forked)
3. Add haml pages into views/pages directory.
4. Install gems, run this in terminal: bundle install
5. Start the server: puma -p 8484

Any page you add is accessible as http://localhost:8484/[PAGENAME]

For example, if you added a views/pages/about.haml the link will be http://localhost:8484/about

### Javascript and CSS

Files in the public folder are static files. Put your favicon, images, javascript, and css frameworks here.

views/coffee is a directory for coffeescript files. The file should be valid coffeescript at /views/coffee/[FILE].coffee and path will be /js/[FILE].js
views/scss is a directory for sass/scss files. The file should be valid sass (if file extension is .sass) or scss (if file extension is .scss). The path will be /css/[FILE].css

## Deploy

Easiest is to deploy to (Heroku)[http://heroku.com/]

TODO: Better Instructions

1. (Only the first time) Create the heroku app, run this in terminal: heroku create [APP_NAME]
2. Push the app to heroku master: git push heroku master
3. Visit your new site (root url will be shown at the bottom after deploy).

## TODO

* bin/setup - to help set up the environment in case there's no Ruby / JS runtime.
* bin/deploy - to help deploy the app live (to Heroku)
* If there's enough demand, I'll likely end up wrapping this into a gem for easier handling (although usage will require more setup)
