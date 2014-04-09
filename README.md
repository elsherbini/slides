Building my personal slide engine based on the [tutorial at Tuts+](https://tutsplus.com/course/build-your-own-slide-engine/) taught by [Jeffrey Way](http://jeffrey-way.com/).

To get this working on your machine in it's current state:
* Make sure you have node/npm and ruby installed
* Install [yeoman](http://yeoman.io/) with `npm install -g yo`
* Install the [compass](http://compass-style.org/) css preproccessor with `gem install compass` 
* Clone the git repo into a new directory
* Run `npm install` to install the dependencies from the `package.json` file
* Run `bower update` to install the [bower](http://bower.io/) components
* run `grunt serve` within the directory to serve it up and see it in the browser

(grunt)[http://gruntjs.com/] will listen for changes to the files and autoreload the browser upon saving.