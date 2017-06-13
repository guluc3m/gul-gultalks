# GulTalks
[![Build Status](https://travis-ci.org/guluc3m/gul-gultalks.svg?branch=develop)](https://travis-ci.org/guluc3m/gul-gultalks)
[![License](http://img.shields.io/license/MIT.png?color=red)](https://github.com/guluc3m/gul-gultalks/blob/master/LICENSE)
[![Inline docs](http://inch-ci.org/github/guluc3m/gul-gultalks.svg?branch=master)](http://inch-ci.org/github/guluc3m/gul-gultalks)

This is UC3M's Linux User Group (or GUL in Spanish) conference management system made with the Ruby on Rails framework.

The project started in late December of 2013 to replace the old application made with the Cake PHP framework which was very difficult to maintain and we decided to start from scratch, adding many modern development techniques and the latest technologies.

You can see it live [here](https://cursos.gul.es).

#### Development environment
Clone it:
```
$ git clone https://github.com/guluc3m/gul-gultalks
$ cd gul-gultalks
```

Install the dependencies, excluding the production ones:
```shell
$ bundle install --without production
```

Migrate the database and add sample data:
```shell
$ bin/rails db:migrate
$ bin/rails db:seed 
```

Start the server:
```shell
$ bin/rails server [-p $PORT] # Port is optional
```

And now you should be able see it live! 

#### Running the tests
Unit tests - which at the moment are really basic and don't cover a lot - can be run with:
```shell
$ bin/rails test
```

#### Deployment
If you want to deploy the app, you have to modify the deploy [config](https://github.com/guluc3m/gul-gultalks/blob/develop/config/deploy.rb) file placed in the config directory. 
Then, you have to type the following command:

```shell
$ mina deploy [--verbose]
```

#### Some of the technologies employed
- [Ruby on Rails](http://rubyonrails.org/)
- [HAML](http://haml.info/)
- [SASS](http://sass-lang.com/)
- [CofeeScript](http://coffeescript.org/)
- [Zurb Foundation](http://foundation.zurb.com/)
- [Font Aweosme](http://fortawesome.github.io/Font-Awesome/)
- [RailsAdmin](https://github.com/sferik/rails_admin/)
- [Devise](https://github.com/plataformatec/devise)
- [CanCanCan](https://github.com/CanCanCommunity/cancancan)
- [Ancestry](https://github.com/stefankroes/ancestry)
- [Better Errors](https://github.com/charliesome/better_errors)
- [Mina](http://mina-deploy.github.io/mina/)
- [and many more!](https://github.com/guluc3m/gul-gultalks/blob/develop/Gemfile)

#### Wiki
For more info about the API or the deploy, check the [wiki](https://github.com/guluc3m/gul-gultalks/wiki)

#### Have a bug/ suggestion?
Bugs or suggestions? Visit the [issue tracker](https://github.com/guluc3m/gul-gultalks/issues/)


License
=======
GulTalks is under the MIT License. See the [LICENSE](https://github.com/guluc3m/gul-gultalks/blob/master/LICENSE)
