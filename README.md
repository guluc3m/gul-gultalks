# GulTalks  [![Build Status](https://travis-ci.org/guluc3m/gul-gultalks.svg?branch=master)](https://travis-ci.org/guluc3m/gul-gultalks) [![Inline docs](http://inch-ci.org/github/guluc3m/gul-gultalks.svg?branch=master)](http://inch-ci.org/github/guluc3m/gul-gultalks)

This is the GUL's Technical Conferences management system made with Ruby on Rails framework. 
This project started in late december of 2013 for replace the old application made with Cake PHP framework which was very difficult to maintain and we decided to start from scratch, adding many modern development techniques and latest technologies.

### Some of the technologies employed
    
- [Ruby on Rails](http://rubyonrails.org/)
- [HAML](http://haml.info/)
- [SASS](http://sass-lang.com/)
- [CofeeScript](http://coffeescript.org/)
- [Zurb Foundation](http://foundation.zurb.com/)
- [Font Aweosme](http://fortawesome.github.io/Font-Awesome/)
- [Active Admin](http://activeadmin.info/)
- [Devise](https://github.com/plataformatec/devise)
- [CanCanCan](https://github.com/CanCanCommunity/cancancan)
- [Ancestry](https://github.com/stefankroes/ancestry)
- [Better Errors](https://github.com/charliesome/better_errors)
- and many more...

### Development environment


To build the app in dev or test environments, use the following command:

```shell
$ bundle install --without production
```
We think that sqlite is better for development purposes.

#### To run it:

```shell
$ rake db:migrate
$ rake db:seed     # Add a pair of conferences for testing only
$ rails server [-p $PORT] # Port is optional
```

### Deploy (production enviroment)

To build the app in production environment, use the following command:

```
$ bundle install --without development
```
Now mysql2 is used as DB engine instead of sqlite.

