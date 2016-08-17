# GulTalks  [![License](http://img.shields.io/license/MIT.png?color=red)](https://github.com/guluc3m/gul-gultalks/blob/master/LICENSE) [![Build Status](https://travis-ci.org/guluc3m/gul-gultalks.svg?branch=develop)](https://travis-ci.org/guluc3m/gul-gultalks) [![Inline docs](http://inch-ci.org/github/guluc3m/gul-gultalks.svg?branch=master)](http://inch-ci.org/github/guluc3m/gul-gultalks)

This is the GUL's Technical Conferences management system made with Ruby on Rails framework.
This project started in late december of 2013 for replace the old application made with Cake PHP
framework which was very difficult to maintain and we decided to start from scratch,
adding many modern development techniques and latest technologies.

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
- [Mina](http://mina-deploy.github.io/mina/)
- [and many more...](https://github.com/guluc3m/gul-gultalks/blob/develop/Gemfile)

## Development environment

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

## Production enviroment (deploy)

If you want to deploy the app, you have to modify the deploy [config](https://github.com/guluc3m/gul-gultalks/blob/develop/config/deploy.rb) file placed in the
config directory. Then, you have just type the following command:

```shell
$ mina deploy [--verbose]
```

To build the app in production environment and test it locally, use the following command:

```shell
$ bundle install --without development
$ rails server [-p $PORT] # Port is optional
```

Now mysql2 is used as DB engine instead of sqlite.


Bugs
====

Bugs or suggestions? Visit the [issue tracker](https://github.com/guluc3m/gul-gultalks/issues/)

GulTalks tests are run automatically by [Travis CI](https://travis-ci.org/guluc3m/gul-gultalks)

License
=======

GulTalks is under the MIT License. See the [LICENSE](https://github.com/guluc3m/gul-gultalks/blob/master/LICENSE)
