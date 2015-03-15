# GulTalks [![Build Status](https://travis-ci.org/guluc3m/gul-gultalks.svg?branch=develop)](https://travis-ci.org/guluc3m/gul-gultalks)
- - -

This is the GUL's Technical Conferences management system made with Ruby on Rails framework. 
This project started in late december of 2013 for replace the old application made with Cake PHP framework which was very difficult to maintain and we decided to start from scratch, adding many modern development techniques and latest technologies.

### Development environment


To build the app in dev or test environments, use the following command:

```
$ bundle install --without production
```
We think that sqlite is better for development purposes.

#### To run it:

```
$ rake db:migrate
$ rails server -p $PORT
```

### Deploy (production enviroment)

To build the app in production environment, use the following command:

```
$ bundle install --without development
```
Now mysql2 is used as db engine instead of sqlite.

