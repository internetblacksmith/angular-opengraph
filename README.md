# Angular Opengraph

## The problem
The crawler used by facebook to read the opengraph meta tag from websites doesn't execute javascript thus making any angular website appear badly when shared on facebook

## The solution
Detect if the website is been requested by a user and serve the actual app or a facebbok crawler and serve a static page rendered by the webserver.

## About
This is a proof of concept of the solution in this file and is composed of three components a [sinatra](http://sinatrarb.com) backend, a [angular](https://angularjs.org) frontend served with a [express](https://expressjs.com) webserver and a [node](https://nodejs.org/en/) script that will allow you to test it using [localtunnel.js](https://localtunnel.github.io/www/) to create a tunnel to the angular and sinatra server making it visible from facebook directly from the local pc.

### Dependencies
* ruby (2.4.1)
* node and npm
* [tmux](https://github.com/tmux/tmux) (optional but will make your life easier)
op
## How to test

### Installation
* clone the repo
* install the dependecies
  * `bundle install` from the `sinatra-BE` folder
  * `npm install && bower install` from the `angular-FE` folder
  * `npm install` from the root folder

## Run it
the simples way to test this app on a osx/linux machine is to simply run the session.sh script this will start tmux and split the terminal window in 3 panel with the front end in the top left corner, sinatra in the  right top corner and the localtunnel script in the bottom, the angular panel will ask you for the backen url it can be found in the bottom panel.

To test this app without tmux simply open three teminal window/tab and run:
* `cd angular-FE && grunt build && npm start`
* `cd sinatra-BE && ruby app.rb`
* `node localtunnel.js`

# Tmux cheatsheet

## Installation
osx: `brew install tmux`
linux: in any package manager

## Info
[crash course](https://robots.thoughtbot.com/a-tmux-crash-course)
[cheatsheet](https://tmuxcheatsheet.com)

probably you'll use only this key combination:

`ctrl + b` then &larr; or &uarr; or &rarr; or &darr; to move between panels
`ctrl + b` then `x` then `y` to close the active panel