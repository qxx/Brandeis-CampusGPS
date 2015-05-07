# Brandeis CampusGPS

![Codeship](https://codeship.com/projects/bb38b790-c46c-0132-bf85-1a3509ce6b71/status?branch=master)
[![Code Climate](https://codeclimate.com/github/qxx/Brandeis-CampusGPS/badges/gpa.svg)](https://codeclimate.com/github/qxx/Brandeis-CampusGPS)

A rails app that produces human readable directions between locations on campus. Help visitors not get lost as they try and find a building, office, etc.

### How to use it
Go to <http://brandeisgps.herokuapp.com>, type in the names of the buildings or parking lots and hit GO!

You may also pick any pin on the map as your start point, just hit the "Where am I?" button.

When you enter a building, you may browse the building's floorplans, or just search for the room you want to find.

### Current Supporting Areas
##### Outdoor
* Theater Lot
* Shapiro Campus Center
* Part of Science Complex (Volen, SSC, Gzang)
* Faber Library
* Golding
* Lown
* Olin-Sang
* Rabb
* Shiffman
* Mandel
* Heller
* Kutz

##### Indoor
* Volen
* Shapiro Science Center (Room search not supported)

### Screen Shots
![Homepage](http://brandeisgps.herokuapp.com/screenshot1.png)

![Guiding](http://brandeisgps.herokuapp.com/screenshot2.png)

### Architecture
![Architecture](http://brandeisgps.herokuapp.com/architecture.png)

The application is built with Ruby on Rails 4. It has a standard Model-View-Controller (MVC) architecture. The view is built with Google Maps API (including Gmaps4rails gem), but the data we show to our users, including guiding texts, photos and lines and markers on the map, are all provided by ourselves.

### Technologies
* Gmaps4rails gem

Our modified version, hosted [here](https://github.com/qxx/Google-Maps-for-Rails). It helps simplify the process of adding markers and lines to the Google Map.

* Google Maps Javascript API

The documentation of Google Maps Javascript API is [here](https://developers.google.com/maps/documentation/javascript/). It's free for usage less than 25,000 map loads per day, which is sufficient for us. The map on the index page is completely made with Google Maps Javascript API, which is pure javascript.

* A* algorithm

We use [A* algorithm](http://en.wikipedia.org/wiki/A*_search_algorithm) to calculate the shortest path between two given points. The graph structure is constructed at the first time the application runs with locations and paths in the database. This algorithm is impletement in ruby.

* jQuery

jQuery is a popular javascript library. Our autocomplete feature is made with jQuery.

* Bootstrap

Bootstrap provides an easy way to style our website. It responds to different screen sizes, e.g. phones, tablets, desktops. It also provides the glyphicons.

### How Can YOU Help
Collecting data is the biggest challenge we have faced so far. We are trying our best to cover every corner of our campus, but it's impossible to put everything in at one time. If you find a bug while using our product, or you just want us to support a specific location, please create a issue and we'll put that into our priority.

It's even better if you could poke into our seed files and help us figure out what to add. Use pull requests!

### Our Team
[![github](http://brandeisgps.herokuapp.com/githubmark.png)](https://github.com/ginnyzou2015) Jing Zou <jzou@brandeis.edu>

[![github](http://brandeisgps.herokuapp.com/githubmark.png)](https://github.com/Theonidis) Ted Hultman <tedh@brandeis.edu>

[![github](http://brandeisgps.herokuapp.com/githubmark.png)](https://github.com/tuwanwan) Wan Zhou <wzhou@brandeis.edu>

[![github](http://brandeisgps.herokuapp.com/githubmark.png)](https://github.com/qxx) Xi Qian <qxx@brandeis.edu>
